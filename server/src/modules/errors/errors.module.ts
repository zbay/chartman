import { Module } from '@nestjs/common';

import { ErrorsController } from '@errors/controllers/errors/errors.controller';
import { ErrorLoggingService } from '@errors/services/error-logging/error-logging.service';

@Module({
    controllers: [ErrorsController],
    providers: [ErrorLoggingService]
})
export class ErrorsModule {
}
