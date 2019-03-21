import { Injectable, HttpStatus } from '@nestjs/common';

import { Pool } from 'pg';

// There needs to be AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env variables
import { config as AWS_CONFIG, SES, SQS, AWSError } from 'aws-sdk';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CustomException } from '@common/exceptions/custom.exception';
import { ErrorLoggingService } from '@errors/services/error-logging/error-logging.service';
import { PostgresService } from '@shared/services/postgres/postgres.service';
import { ReceiveMessageResult, Message } from 'aws-sdk/clients/sqs';

AWS_CONFIG.update({region: 'us-east-1'});

const HELP_EMAIL = `chartman.help@gmail.com`;

@Injectable()
export class AwsService {
    private chartmanConfig: ChartmanAppConfig;
    private pool: Pool;
    private sqs: SQS;

    constructor(private readonly configService: ConfigService,
                private readonly errorLoggingService: ErrorLoggingService,
                private readonly postgresService: PostgresService) {
        this.chartmanConfig = this.configService.config;
        this.pool = this.postgresService.pool;
        this.sqs = new SQS();
    }

    private logAwsError(err: AWSError, url: string): void {
        this.errorLoggingService.logError({
            error: {
                message: err.message,
                stack: err.stack,
                name: err.name
            },
            url,
            userID: null,
        });
    }

    saveBounces(): void {
        const bounceQueueURL = this.chartmanConfig.sesBounceQueueURL;
        const bounceParams = {
            QueueUrl: bounceQueueURL,
            MaxNumberOfMessages: 10
        };
        this.sqs.receiveMessage(bounceParams, (err: AWSError, data: ReceiveMessageResult) => {
            if (err) {
                this.logAwsError(err, bounceQueueURL);
            } else {
                if (data.Messages) {
                    data.Messages.forEach((msg: Message) => {
                        const deleteParams = {
                            QueueUrl: bounceQueueURL,
                            ReceiptHandle: msg.ReceiptHandle
                        };
                        const body = JSON.parse(msg.Body);
                        const bounce = body.bounce;
                        if (!bounce) {
                            this.sqs.deleteMessage(deleteParams, (delErr) => {
                                if (delErr) {
                                    this.logAwsError(delErr, bounceQueueURL);
                                }
                            });
                        } else {
                            Promise.all(
                                bounce.bouncedRecipients.map((recipient) => {
                                    return this.pool.query(`SELECT public.fn_save_bounce($1)`, [{
                                        bounce_type: bounce.bounceType,
                                        bounce_subtype: bounce.bounceSubType,
                                        timestamp: bounce.timestamp,
                                        bounce_recipient: recipient.emailAddress
                                    }]);
                                }))
                                .then(() => {
                                    this.sqs.deleteMessage(deleteParams, (delErr) => {
                                        if (delErr) {
                                            this.logAwsError(delErr, bounceQueueURL);
                                        }
                                    });
                                })
                                .catch((error: Error) => {
                                    this.errorLoggingService.logError({
                                        error: err,
                                        userID: null,
                                        url: bounceQueueURL
                                    });
                                });
                        }
                    });
                }
            }
        });
    }
    saveComplaints(): void {
        const complaintQueueURL = this.chartmanConfig.sesComplaintQueueURL;

        const complaintParams = {
                QueueUrl: complaintQueueURL,
                MaxNumberOfMessages: 10
        };

        this.sqs.receiveMessage(complaintParams, (err: Error, data: ReceiveMessageResult) => {
            if (err) {
                this.errorLoggingService.logError({
                    error: {
                        message: err.message,
                        stack: err.stack,
                         name: err.name
                     },
                    userID: null,
                    url: complaintQueueURL
                });
            } else {
                if (data.Messages) {
                    data.Messages.forEach((msg: Message) => {
                        const deleteParams = {
                            QueueUrl: complaintQueueURL,
                            ReceiptHandle: msg.ReceiptHandle
                        };
                        const body = JSON.parse(msg.Body);
                        const content = JSON.parse(body.Message);
                        if (!content || !content.complaint) {
                            this.sqs.deleteMessage(deleteParams, (delErr: AWSError) => {
                                if (err) {
                                    this.logAwsError(delErr, complaintQueueURL);
                                }
                            });
                        } else {
                            const complaint = content.complaint;
                            Promise.all(
                                complaint.complainedRecipients.map((recipient) => {
                                    return this.pool.query(`SELECT public.fn_save_complaint($1)`, [{
                                        timestamp: complaint.timestamp,
                                        message_id: content.mail.messageId,
                                        complained_recipient: recipient.emailAddress
                                    }]);
                                }))
                                .then(() => {
                                    this.sqs.deleteMessage(deleteParams, (delErr: AWSError) => {
                                        if (delErr) {
                                            this.logAwsError(delErr, complaintQueueURL);
                                        }
                                    });
                                })
                                .catch((error: Error) => {
                                    this.errorLoggingService.logError({
                                        error,
                                        userID: null,
                                        url: complaintQueueURL
                                    });
                                });
                        }
                    });
                }
            }
        });
    }

    async sendPasswordResetEmail(email: string, randomRoute: string) {
        const emailParams = {
            Destination: { ToAddresses: [email] },
            Message: {
              Body: {
                Html: {
                 Charset: `UTF-8`,
                 Data: `<p>Hello,</p>
                         <p>You've requested a password change for your Chartman account.
                              Please visit <a href="${this.chartmanConfig.host}/account/reset-password/${randomRoute}">this link</a> to reset it.</p>
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
            .sendEmail(emailParams)
            .promise()
            .catch((err: Error) => {
                throw new CustomException({
                    message: `Failed to send the password reset email to your inbox!`,
                    name: `Password Reset Email Failure`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

}
