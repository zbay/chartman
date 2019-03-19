import { APP_INTERCEPTOR } from '@nestjs/core';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import * as customEnv from 'custom-env';
customEnv.env(process.env.NODE_ENV);

import { AccessControlHeaderInterceptor } from './common/interceptors/access-control-header.interceptor';
import { AccountsModule } from './modules/accounts/accounts.module';
import { ConfigService } from '@shared/services/config/config.service';
import { CronModule } from '@cron/cron.module';
import { CurrenciesModule } from '@currencies/currencies.module';
import { ErrorsModule } from '@errors/errors.module';
import { SchedulerService } from '@cron/services/scheduler/scheduler.service';
import { SharedModule } from '@shared/shared.module';
import { StocksModule } from '@stocks/stocks.module';
import { TechnicalsModule } from '@technicals/technicals.module';

@Module({
  imports: [AccountsModule, CronModule, CurrenciesModule, ErrorsModule, SharedModule, StocksModule, TechnicalsModule,
      TypeOrmModule.forRoot({
        type: `postgres`
        , host: process.env.POSTGRES_HOST
        , port: Number(process.env.POSTGRES_PORT)
        , username: process.env.POSTGRES_USER
        , password: process.env.POSTGRES_PASSWORD
        , database: process.env.POSTGRES_DATABASE
        , entities: [__dirname + '/**/*.entity{.ts,.js}']
        , synchronize: true
      })
  ],
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

  constructor(private readonly configService: ConfigService,
              private readonly schedulerService: SchedulerService) {
    AppModule.port = this.configService.get(`port`);
    AppModule.host = this.configService.get(`host`);
    AppModule.env = this.configService.get(`env`);
    this.schedulerService.runAllCronJobs();
  }
}
