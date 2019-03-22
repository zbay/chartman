import { Injectable } from '@nestjs/common';

import { LoggedErrorDto } from '@errors/dto/logged-error.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';

// TODO: figure out why JWT is required for this service
@Injectable()
export class ErrorLoggingService {
    constructor(private readonly postgresQueryService: PostgresQueryService) {}

    async logError(errorDTO: LoggedErrorDto): Promise<any> {
        const err: Error = errorDTO.error;
        return this.postgresQueryService.queryFunction({
            function: `fn_log_error`,
            params: [errorDTO.userID, errorDTO.url, err.message, err.stack],
            swallowError: true
        });
    }
}
