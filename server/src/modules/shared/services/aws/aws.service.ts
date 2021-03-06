import { Injectable, HttpStatus, HttpException } from '@nestjs/common';

// There needs to be AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env variables
import { config as AWS_CONFIG, SES, SQS, AWSError } from 'aws-sdk';

import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { ErrorLoggingService } from '@errors/services/error-logging/error-logging.service';
import { ReceiveMessageResult, Message } from 'aws-sdk/clients/sqs';
import { PostgresQueryService } from '../postgres-query/postgres-query.service';

AWS_CONFIG.update({region: 'us-east-1'});

const HELP_EMAIL = `chartman.help@gmail.com`;
const MAX_SQS_MESSAGES = 10;

@Injectable()
export class AwsService {
    private chartman_config: ChartmanAppConfig;
    private sqs: SQS;

    constructor(private readonly config_service: ConfigService,
                private readonly error_logging_service: ErrorLoggingService,
                private readonly postgres_query_service: PostgresQueryService) {
        this.chartman_config = this.config_service.config;
        this.sqs = new SQS();
    }

    private logAwsError(err: AWSError, url: string): void {
        this.error_logging_service.logError({
            error: {
                message: err.message,
                stack: err.stack,
                name: err.name
            },
            url,
            user_id: null,
        });
    }

    saveBounces(): void {
        const bounce_queue_url = this.chartman_config.ses_bounce_queue_url;
        const bounce_params = {
            QueueUrl: bounce_queue_url,
            MaxNumberOfMessages: MAX_SQS_MESSAGES
        };

        const receiveBounceMessages = receiveMessages.bind(this);
        receiveBounceMessages();

        async function receiveMessages() {
            this.sqs.receiveMessage(bounce_params, async (err: AWSError, data: ReceiveMessageResult) => {
                if (err) {
                    this.logAwsError(err, bounce_queue_url);
                } else {
                    if (data.Messages) {
                        const num_messages = data.Messages.length;
                        await Promise.all(data.Messages.map((msg: Message) => {
                            const delete_params = {
                                QueueUrl: bounce_queue_url,
                                ReceiptHandle: msg.ReceiptHandle
                            };
                            const body = JSON.parse(msg.Body);
                            const bounce = body.bounce;
                            if (!bounce) {
                                this.sqs.deleteMessage(delete_params, (del_err) => {
                                    if (del_err) {
                                        this.logAwsError(del_err, bounce_queue_url);
                                        return Promise.reject(del_err);
                                    } else {
                                        return Promise.resolve();
                                    }
                                });
                            } else {
                                return Promise.all(
                                    bounce.bouncedRecipients.map((recipient) => {
                                        return this.postgres_query_service.queryFunction({
                                            function: `fn_save_bounce`,
                                            params: [{
                                                bounce_type: bounce.bounceType,
                                                bounce_subtype: bounce.bounceSubType,
                                                timestamp: bounce.timestamp,
                                                bounce_recipient: recipient.emailAddress
                                            }]
                                        });
                                    }))
                                    .then(() => {
                                        this.sqs.deleteMessage(delete_params, (del_err) => {
                                            if (del_err) {
                                                this.logAwsError(del_err, bounce_queue_url);
                                            }
                                        });
                                    })
                                    .catch((error: Error) => {
                                        this.error_logging_service.logError({
                                            error,
                                            user_id: null,
                                            url: bounce_queue_url
                                        });
                                    });
                            }
                        }));
                        // Once all messages from prior request have been handled, request again if there might be more to process
                        if (num_messages >= MAX_SQS_MESSAGES) {
                            receiveBounceMessages();
                        }
                    }
                }
            });
        }
    }
    saveComplaints(): void {
        const complaint_queue_url = this.chartman_config.ses_complaint_queue_url;

        const complaint_params = {
                QueueUrl: complaint_queue_url,
                MaxNumberOfMessages: MAX_SQS_MESSAGES
        };

        const receiveComplaintMessages = receiveMessages.bind(this);
        receiveComplaintMessages();

        async function receiveMessages() {
            this.sqs.receiveMessage(complaint_params, async (err: Error, data: ReceiveMessageResult) => {
                if (err) {
                    this.error_logging_service.logError({
                        error: {
                            message: err.message,
                            stack: err.stack,
                             name: err.name
                         },
                         user_id: null,
                        url: complaint_queue_url
                    });
                } else {
                    if (data.Messages) {
                        const num_messages = data.Messages.length;
                        await Promise.all(data.Messages.map((msg: Message) => {
                            const delete_params = {
                                QueueUrl: complaint_queue_url,
                                ReceiptHandle: msg.ReceiptHandle
                            };
                            const body = JSON.parse(msg.Body);
                            const content = JSON.parse(body.Message);
                            if (!content || !content.complaint) {
                                this.sqs.deleteMessage(delete_params, (del_err: AWSError) => {
                                    if (del_err) {
                                        this.logAwsError(del_err, complaint_queue_url);
                                        return Promise.reject();
                                    } else {
                                        return Promise.resolve();
                                    }
                                });
                            } else {
                                const complaint = content.complaint;
                                return Promise.all(
                                    complaint.complainedRecipients.map((recipient) => {
                                        return this.postgres_query_service.queryFunction({
                                            function: `fn_save_complaint`,
                                            params: [{
                                                timestamp: complaint.timestamp,
                                                message_id: content.mail.messageId,
                                                complained_recipient: recipient.emailAddress
                                            }]
                                        });
                                    }))
                                    .then(() => {
                                        this.sqs.deleteMessage(delete_params, (del_err: AWSError) => {
                                            if (del_err) {
                                                this.logAwsError(del_err, complaint_queue_url);
                                            }
                                        });
                                    })
                                    .catch((error: Error) => {
                                        this.error_logging_service.logError({
                                            error,
                                            user_id: null,
                                            url: complaint_queue_url
                                        });
                                    });
                            }
                        }));
                        if (num_messages >= MAX_SQS_MESSAGES) {
                            receiveComplaintMessages();
                        }
                    }
                }
            });
        }

    }

    async sendPasswordResetEmail(email: string, randomRoute: string) {
        const email_params = {
            Destination: { ToAddresses: [email] },
            Message: {
              Body: {
                Html: {
                 Charset: `UTF-8`,
                 Data: `<p>Hello,</p>
                         <p>You've requested a password change for your Chartman account.
                              Please visit <a href="${this.chartman_config.host}/account/reset-password/${randomRoute}">this link</a> to reset it.</p>
                          <p>Best,</p>
                          <p>Your friends at Chartman</p>`
                }
               },
               Subject: {
                Charset: `UTF-8`,
                Data: `Resetting your Chartman password`
               }
              },
            Source: HELP_EMAIL,
            ReplyToAddresses: [HELP_EMAIL],
          };

        return new SES({apiVersion: `2010-12-01`})
            .sendEmail(email_params)
            .promise()
            .catch((err: Error) => {
                throw new HttpException({
                    message: `Failed to send the password reset email to your inbox!`,
                    name: `Password Reset Email Failure`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

}
