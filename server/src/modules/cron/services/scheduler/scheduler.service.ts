import { Injectable } from '@nestjs/common';

import * as cron from 'node-cron';

import { AwsService } from '@shared/services/aws/aws.service';

@Injectable()
export class SchedulerService {
    constructor(private readonly awsService: AwsService) {}

    pingSQS() {
        // Three asterisks: once per day
        cron.schedule(`* * *`, () => {
            this.awsService.pingSQS();
        });
    }

    runAllCronJobs() {
        this.pingSQS();
    }
}
