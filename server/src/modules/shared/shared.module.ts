import { Module, Global } from '@nestjs/common';

import { AwsService } from './services/aws/aws.service';
import { ConfigService } from '@shared/services/config/config.service';
import { ErrorsModule } from '@errors/errors.module';
import { PostgresConnectionService } from '@shared/services/postgres-connection/postgres.connection.service';
import { PostgresQueryService } from './services/postgres-query/postgres-query.service';

@Global()
@Module({
  imports: [ErrorsModule],
  exports: [AwsService, ConfigService, PostgresConnectionService, PostgresQueryService],
  providers: [AwsService, ConfigService, PostgresConnectionService, PostgresQueryService]
})
export class SharedModule {}
