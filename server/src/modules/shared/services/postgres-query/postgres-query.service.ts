import { Injectable, HttpStatus, HttpException } from '@nestjs/common';

import { Pool, QueryResult } from 'pg';

import { PostgresConnectionService } from '../postgres-connection/postgres.connection.service';
import { PostgresFunctionQueryOptions } from '@shared/interfaces/postgres-query-options.interface';
import { PostgresPaginatedFunctionOptions } from '@shared/interfaces/postgres-paginated-function-options.interface';
import { PostgresPaginatedTableOptions } from '@shared/interfaces/postgres-paginated-table-options.interface';

@Injectable()
export class PostgresQueryService {
    private pool: Pool;

    constructor(private readonly postgres_connection_service: PostgresConnectionService) {
        this.pool = this.postgres_connection_service.pool;
    }

    queryFunction<T = any>(options: PostgresFunctionQueryOptions): Promise<T> {
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

    queryFunctionWithPagination(options: PostgresPaginatedFunctionOptions): Promise<any> {
        if (options.function_params && Array.isArray(options.function_params)) {
            options.function_params = options.function_params.join(`, `);
        }
        const row_name = `nameless`;
        const query = `SELECT public.fn_retrieve_page_from_function($1) AS ${row_name}`;
        return this.pool.query(query, [options])
            .then((result: QueryResult) => {
                // console.log(result);
                return result.rows.map((row) => {
                    return row[row_name];
                });
            })
            .catch((err: Error) => {
                // console.log(err);
                throw new HttpException({
                    name: `${options.function} paginated retrieval error`,
                    message: options.err_msg || err.message || `Unspecified postgres paginated function retrieval error!`,
                    stack: err.stack
                },
                HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

    queryTableWithPagination(options: PostgresPaginatedTableOptions): Promise<any> {
        const row_name = `nameless`;
        const query = `SELECT public.fn_retrieve_page_from_table($1) AS ${row_name}`;
        return this.pool.query(query, [options])
            .then((result: QueryResult) => {
                return result.rows.map((row) => {
                    return row[row_name];
                });
            })
            .catch((err: Error) => {
                throw new HttpException({
                    name: `${options.table} paginated retrieval error`,
                    message: options.err_msg || err.message || `Unspecified postgres paginated table retrieval error!`,
                    stack: err.stack
                },
                HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

}
