import { Module, Global } from '@nestjs/common';

import { AwsService } from './services/aws/aws.service';
import { ConfigService } from '@shared/services/config/config.service';
import { ErrorsModule } from '@errors/errors.module';
import { PostgresService } from '@shared/services/postgres/postgres.service';

@Global()
@Module({
  imports: [ErrorsModule],
  exports: [AwsService, ConfigService, PostgresService],
  providers: [AwsService, ConfigService, PostgresService]
})
export class SharedModule {}
