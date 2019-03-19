import { Module, Global } from '@nestjs/common';

import { AwsService } from './services/aws/aws.service';
import { ConfigService } from '@shared/services/config/config.service';
import { ErrorsModule } from '@errors/errors.module';

@Global()
@Module({
  imports: [ErrorsModule],
  exports: [AwsService, ConfigService],
  providers: [AwsService, ConfigService]
})
export class SharedModule {}
