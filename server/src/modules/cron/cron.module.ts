import { Module } from '@nestjs/common';

import { SchedulerService } from './services/scheduler/scheduler.service';

@Module({
    exports: [SchedulerService],
    providers: [SchedulerService]
})
export class CronModule {}
