import { Module, MiddlewareConsumer, HttpModule } from '@nestjs/common';

import { hasJWT } from '@common/middleware/has-jwt.middleware';
import { StocksController } from '@stocks/controllers/stocks/stocks.controller';
import { StockDataService } from '@stocks/services/stock-data/stock-data.service';
import { StockTrackerService } from '@stocks/services/stock-tracker/stock-tracker.service';
import { TechnicalsModule } from '@technicals/technicals.module';
import { SharedModule } from '@shared/shared.module';

@Module({
    controllers: [StocksController],
    imports: [HttpModule, SharedModule, TechnicalsModule],
    providers: [StockDataService, StockTrackerService]
})
export class StocksModule {
    configure(consumer: MiddlewareConsumer) {
        consumer
          .apply(hasJWT)
          .forRoutes(StocksController);
      }
}
