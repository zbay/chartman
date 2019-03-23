import { Injectable } from '@nestjs/common';

import { LoggedErrorDto } from '@errors/dto/logged-error.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';

@Injectable()
export class ErrorLoggingService {
    constructor(private readonly postgres_query_service: PostgresQueryService) {}

    async logError(error_dto: LoggedErrorDto): Promise<any> {
        const err: Error = error_dto.error;
        return this.postgres_query_service.queryFunction({
            function: `fn_log_error`,
            params: [error_dto.user_id, error_dto.url, err.message, err.stack],
            swallow_error: true
        });
    }
}
