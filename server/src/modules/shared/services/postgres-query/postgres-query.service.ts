import { Injectable, HttpStatus } from '@nestjs/common';

import { Pool, QueryResult } from 'pg';

import { PostgresConnectionService } from '../postgres-connection/postgres.connection.service';
import { CustomException } from '@common/exceptions/custom.exception';

interface PostgresQueryOptions {
    function: string;
    errMsg?: string;
    errCode?: HttpStatus;
    isArray?: true;
    params?: any[];
    rowName?: string;
    schema?: string;
}

@Injectable()
export class PostgresQueryService {
    private pool: Pool;

    constructor(private readonly postgresConnectionService: PostgresConnectionService) {
        this.pool = this.postgresConnectionService.pool;
    }

    queryFunction(options: PostgresQueryOptions): Promise<any> {
        const params = options.params || [];
        const schema = options.schema || `public`;
        const rowName = options.rowName || `nameless`;
        const query = `
            SELECT ${schema}.${options.function}(
                ${params.map((v, i) => '$' + (i + 1)).join(', ')}) AS ${rowName}`;
        return this.pool.query(query, params)
        .then((result: QueryResult) => {
            if (!options.isArray) {
                return result.rows[0][rowName];
            } else {
                return result.rows.map((row) => {
                    return row[rowName];
                });
            }
        })
        .catch((err: Error) => {
            throw new CustomException({
                name: `${options.function} error`,
                message: options.errMsg || `Unspecified postgres function query error!`,
                stack: err.stack
            },
            options.errCode || HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

}
