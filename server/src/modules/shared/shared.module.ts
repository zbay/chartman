import { Module, Global } from '@nestjs/common';

import { ConfigService } from '@shared/services/config/config.service';
import { PostgresService } from '@shared/services/postgres/postgres.service';

@Global()
@Module({
  exports: [ConfigService, PostgresService],
  providers: [ConfigService, PostgresService]
})
export class SharedModule {}
