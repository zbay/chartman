import { Module } from '@nestjs/common';

import { MigrationService } from './services/migration/migration.service';

@Module({
    exports: [MigrationService],
    providers: [MigrationService]
})
export class DbMigrationModule {}
