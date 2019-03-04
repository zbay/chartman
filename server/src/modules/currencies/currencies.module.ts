import { Module, HttpModule, MiddlewareConsumer } from '@nestjs/common';

import { CurrenciesController } from '@currencies/controllers/currencies/currencies.controller';
import { CurrencyDataService } from '@currencies/services/currency-data/currency-data.service';
import { CurrencyTrackerService } from '@currencies/services/currency-tracker/currency-tracker.service';
import { hasJWT } from '@common/middleware/has-jwt.middleware';
import { TechnicalsModule } from '@technicals/technicals.module';

@Module({ controllers: [CurrenciesController],
          imports: [HttpModule, TechnicalsModule],
          providers: [CurrencyDataService, CurrencyTrackerService]})
export class CurrenciesModule {
    configure(consumer: MiddlewareConsumer) {
        consumer
          .apply(hasJWT)
          .forRoutes(CurrenciesController);
      }
}
