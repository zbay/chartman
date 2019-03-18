import { Controller, Post, HttpCode, HttpStatus, Body } from '@nestjs/common';

import { ErrorLoggingService } from '@errors/services/error-logging/error-logging.service';
import { LoggedErrorDto } from '@errors/dto/logged-error.dto';

@Controller('error')
export class ErrorsController {
    constructor(private readonly errorLoggingService: ErrorLoggingService) {
    }

    @Post()
    @HttpCode(HttpStatus.NO_CONTENT) // Errors caused by logging errors will fail silently
    async logError(@Body() error: LoggedErrorDto): Promise<any> {
       return await this.errorLoggingService.logError(error);
    }
}
