import { Injectable } from '@nestjs/common';
import { Pool } from 'pg';

import { PostgresService } from '@shared/services/postgres/postgres.service';
import { LoggedErrorDto } from '@errors/dto/logged-error.dto';

@Injectable()
export class ErrorLoggingService {
    private _pool: Pool;
    constructor(private readonly postgresService: PostgresService) {
        this._pool = this.postgresService.pool;
    }

    async logError(errorDTO: LoggedErrorDto): Promise<any> {
        const err: Error = errorDTO.error;
        return this._pool.query(`SELECT public.fn_log_error($1, $2, $3, $4)`,
                [errorDTO.userID, errorDTO.url, err.message, err.stack])
            .catch((log_error) => {
                // tslint:disable-next-line:no-console
                console.log(log_error);
            });
    }
}
