import { MigrationOperation } from './migration-operation.interface';

export interface Migration {
    operations: MigrationOperation[];
}
