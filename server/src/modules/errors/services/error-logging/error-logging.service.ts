import { Injectable } from '@nestjs/common';

import { Connection } from 'typeorm';

import { LoggedErrorDto } from '@errors/dto/logged-error.dto';

@Injectable()
export class ErrorLoggingService {
    constructor(private readonly connection: Connection) {
    }

    async logError(errorDTO: LoggedErrorDto): Promise<any> {
        const err: Error = errorDTO.error;
        return this.connection.query(`SELECT public.fn_log_error($1, $2, $3, $4)`,
                [errorDTO.userID, errorDTO.url, err.message, err.stack])
            .catch((log_error) => {
                // tslint:disable-next-line:no-console
                console.log(log_error);
            });
    }
}
