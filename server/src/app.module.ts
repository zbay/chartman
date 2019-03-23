import { APP_INTERCEPTOR } from '@nestjs/core';
import { Module } from '@nestjs/common';

import { AccessControlHeaderInterceptor } from './common/interceptors/access-control-header.interceptor';
import { AccountsModule } from './modules/accounts/accounts.module';
import { ConfigService } from '@shared/services/config/config.service';
import { CronModule } from 'modules/cron/cron.module';
import { CurrenciesModule } from '@currencies/currencies.module';
import { DbMigrationModule } from '@migration/db-migration.module';
import { ErrorsModule } from '@errors/errors.module';
import { MigrationService } from '@migration/services/migration/migration.service';
import { SchedulerService } from 'modules/cron/services/scheduler/scheduler.service';
import { SharedModule } from '@shared/shared.module';
import { StocksModule } from '@stocks/stocks.module';
import { TechnicalsModule } from '@technicals/technicals.module';

@Module({
  imports: [AccountsModule, CronModule, CurrenciesModule, DbMigrationModule, ErrorsModule, SharedModule, StocksModule, TechnicalsModule],
  controllers: [],
  providers: [
    {
      provide: APP_INTERCEPTOR,
      useClass: AccessControlHeaderInterceptor,
    }]
})
export class AppModule {
  static port: number;
  static host: string;
  static env: string;

  constructor(private readonly config_service: ConfigService,
              private readonly migration_service: MigrationService,
              private readonly scheduler_service: SchedulerService) {
    AppModule.port = this.config_service.get(`port`);
    AppModule.host = this.config_service.get(`host`);
    AppModule.env = this.config_service.get(`env`);
    this.migration_service.migratePostgresSchema();
    this.scheduler_service.runAllCronJobs();
  }
}
