export interface MigrationOperation {
    verb: string;
    name: string;
    type?: string;
    v?: number;
}
