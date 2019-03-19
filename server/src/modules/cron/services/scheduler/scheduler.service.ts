import { Injectable } from '@nestjs/common';

import * as cron from 'node-cron';

import { AwsService } from '@shared/services/aws/aws.service';

@Injectable()
export class SchedulerService {
    constructor(private readonly awsService: AwsService) {}

    saveSesNotifications() {
        // Three asterisks: once per day
        cron.schedule('* * * 01 00', () => {
            this.awsService.saveBounces();
            this.awsService.saveComplaints();
        });
    }

    runAllCronJobs() {
        this.saveSesNotifications();
    }
}
