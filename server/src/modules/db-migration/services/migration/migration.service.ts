import { Injectable } from '@nestjs/common';

import * as fs from 'fs';
import { Pool } from 'pg';

import { Migration } from '@migration/interfaces/migration.interface';
import { MigrationType } from '@migration/enums/migration-type.enum';
import { MigrationVerb } from '@migration/enums/migration-verb.enum';
import { PostgresConnectionService } from '@shared/services/postgres-connection/postgres.connection.service';

const pathPrefixHelper = __dirname.split(`/`);
pathPrefixHelper.pop();
pathPrefixHelper.pop();
const pathPrefix = `${pathPrefixHelper.join(`/`)}/`;

const paths = {
    migrations: `${pathPrefix}migrations`,
    tables: `${pathPrefix}sql/tables`,
    functions: `${pathPrefix}sql/functions`,
    views: `${pathPrefix}sql/views`,
    extensions: `${pathPrefix}sql/extensions`
};
const oppositeOperations = {
    build: MigrationVerb.TEARDOWN,
    teardown: MigrationVerb.BUILD,
    populate: MigrationVerb.POPULATE,
    depopulate: MigrationVerb.DEPOPULATE
};

// Assumes that chartman db already exists, from Docker startup script or from manual creation locally
// TODO: log errors
@Injectable()
export class MigrationService {
    private pool: Pool;

    constructor(private readonly postgres_connection_service: PostgresConnectionService) {
        this.pool = this.postgres_connection_service.pool;
    }

    async reversePostgresSchemaMigration(filename: string): Promise<any> {
        const migration = require(`${paths.migrations}/${filename}`);
        migration.operations.reverse();
        return this.runMigration(migration, filename, true);
    }

    async forwardPostgresSchemaMigration(): Promise<any> {
        const migrationsTableExistsResult = await this.pool.query(
                `SELECT EXISTS (
                    SELECT 1
                    FROM   information_schema.tables
                    WHERE  table_schema = 'public'
                    AND    table_name = 'migrations'
                ) AS migrations_table_exists;`);
        const migrationsTableExists = migrationsTableExistsResult.rows[0][`migrations_table_exists`];
        if (!migrationsTableExists) {
            try {
                await this.pool.query(
                    fs.readFileSync(`${paths.tables}/migrations/v1/build.sql`)
                        .toString()
                );
                 // tslint:disable-next-line:no-console
                console.log(`Built migration-related tables`);
                return await this.processMigrations();
            } catch (e) {
                return Promise.reject(e);
            }
        } else {
            return await this.processMigrations();
        }
    }

    private async runMigration(migration: Migration, filename: string, isReversal: boolean): Promise<any> {
        const reversals = [];
        let errorWasThrown = false;
        try {
            for (let i = 0; i < migration.operations.length; i++) {
                const op = migration.operations[i];
                // allow for the 'replace' shorthand, that tears down the previous version before building the specified one
                if (op.verb === MigrationVerb.REPLACE) {
                    op.verb = MigrationVerb.BUILD;
                    migration.operations.splice(isReversal ? i + 1 : i - 1, 0, {
                        verb: MigrationVerb.TEARDOWN,
                        type: op.type,
                        name: op.name,
                        v: op.v - 1
                    });
                    i += 1;
                }
            }
        } catch (e) {
            return Promise.reject(e);
        }
        for (const op of migration.operations) {
            try {
                if (!op.v || op.v < 0) {
                    op.v = 1;
                }
                if (op.verb === MigrationVerb.POPULATE) {
                    op.type = MigrationType.TABLE;
                }
                if (isReversal) {
                    op.verb = oppositeOperations[op.verb];
                }

                const doPath = `${paths[op.type + 's']}/${op.name}/v${op.v}/${op.verb}.sql`;
                const undoPath = `${paths[op.type + 's']}/${op.name}/v${op.v}/${oppositeOperations[op.verb]}.sql`;
                // tslint:disable-next-line:no-console
                console.log(`Running: ${doPath}`);
                const doQuery = fs.readFileSync(doPath).toString();
                await this.pool.query(doQuery);
                reversals.unshift(undoPath);
            } catch (e) {
                // tslint:disable-next-line:no-console
                console.log(`ERROR! Undoing changes`);
                errorWasThrown = true;
                for (const revertScript of reversals) {
                    // tslint:disable-next-line:no-console
                    console.log(`Running: ${revertScript}`);
                    try {
                        const reverseQuery = fs.readFileSync(revertScript).toString();
                        await this.pool.query(reverseQuery);
                    } catch (e) {
                        return Promise.reject(e);
                    }
                }
                return Promise.reject(e);
        }
    }
        // mark migration as completed
        if (!errorWasThrown) {
            // tslint:disable-next-line:no-console
            console.log(`Migration${isReversal ? ' reversal of:' : ''} ${filename} was successful!`);
            try {
                if (isReversal) {
                    await this.pool.query(`DELETE FROM public.migrations
                        WHERE filename = $1`, [filename]);
                } else {
                   await this.pool.query(`INSERT INTO public.migrations (filename)
                        VALUES ($1)`, [filename]);
                }
                return Promise.resolve();
            } catch (e) {
                // tslint:disable-next-line:no-console
                console.log(`Failed to save migration change!`);
                // this.logError(e);
                return Promise.reject(e);
            }
        }
    }

    private async processMigrations(): Promise<any> {
        return new Promise((resolve, reject) => {
            fs.readdir(paths.migrations, async (err, files) => {
                if (!files || files.length === 0) {
                    // tslint:disable-next-line:no-console
                    console.log(`No migrations to make.`);
                    return resolve();
                }
                // step 1: sort files alphabetically
                files.sort((file1, file2) => {
                    if (file1 < file2) { return -1; }
                    if (file1 > file2) { return 1; }
                    return 0;
                });
                // step 2, retrieve latest migration and curtail array to only include the ones after
                let latestMigrationResult;
                try {
                    latestMigrationResult =
                        await this.pool.query(`select filename, last_migration from (
                            select filename, MAX(ran) as last_migration
                            from public.migrations
                            group by filename, ran
                            order by filename desc
                            limit 1
                        ) q;`
                    );
                    } catch (e) {
                        return reject(e);
                    }
                if (latestMigrationResult.rows
                            && latestMigrationResult.rows[0]
                            && latestMigrationResult.rows[0].filename) {
                        const latestMigration = latestMigrationResult.rows[0].filename;
                        if (latestMigration) {
                            files = files.slice((files.indexOf(latestMigration) || 0) + 1);
                        }
                    }
                if (files.length === 0) {
                    // tslint:disable-next-line:no-console
                    console.log(`No new migrations to make!`);
                    return resolve();
                } else {
                    // Step 3: process each relevant migration file
                    for (const file of files) {
                        const migration = require(`${paths.migrations}/${file}`);
                        try {
                            await this.runMigration(migration, file, false);
                        } catch (e) {
                            return reject(e);
                        }
                    }
                    return resolve();
                }
            });
        });
    }

}
