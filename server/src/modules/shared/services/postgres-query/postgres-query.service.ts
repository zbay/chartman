import { Injectable, HttpStatus, HttpException } from '@nestjs/common';

import { Pool, QueryResult } from 'pg';

import { PostgresConnectionService } from '../postgres-connection/postgres.connection.service';

interface PostgresQueryOptions {
    function: string;
    err_msg?: string;
    err_code?: HttpStatus;
    returns_array?: boolean;
    params?: any[];
    row_name?: string;
    schema?: string;
    swallow_error?: boolean;
}

@Injectable()
export class PostgresQueryService {
    private pool: Pool;

    constructor(private readonly postgres_connection_service: PostgresConnectionService) {
        this.pool = this.postgres_connection_service.pool;
    }

    queryFunction<T = any>(options: PostgresQueryOptions): Promise<T> {
        const params = options.params || [];
        const schema = options.schema || `public`;
        const row_name = options.row_name || `nameless`;
        const returns_array = options.returns_array || false;
        const query = `
            SELECT ${schema}.${options.function}(
                ${params.map((v, i) => '$' + (i + 1)).join(', ')}) AS ${row_name}`;
        return this.pool.query(query, params)
        .then((result: QueryResult) => {
            if (!returns_array) {
                return result.rows[0][row_name];
            } else {
                return result.rows.map((row) => {
                    return row[row_name];
                });
            }
        })
        .catch((err: Error) => {
            if (options.swallow_error) {
                // tslint:disable-next-line:no-console
                console.log(err);
            } else {
                throw new HttpException({
                    name: `${options.function} error`,
                    message: options.err_msg || err.message || `Unspecified postgres function query error!`,
                    stack: err.stack
                },
                options.err_code || HttpStatus.INTERNAL_SERVER_ERROR);
            }
        });
    }

}
