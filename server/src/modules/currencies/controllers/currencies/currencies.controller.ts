import { Controller, Query, Get, HttpCode, HttpStatus, Post, Req, Delete, Body } from '@nestjs/common';

import { CreateCurrencyPairTrackerDTO } from '@currencies/dto/create-currency-pair-tracker.dto';
import { Currency } from '@currencies/interfaces/currency.interface';
import { CurrencyDataService } from '@currencies/services/currency-data/currency-data.service';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairChartData } from '@currencies/interfaces/currency-pair-chart-data.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { CurrencySearchQueryDTO } from '@currencies/dto/currency-search-query.dto';
import { CurrencyTrackerService } from '@currencies/services/currency-tracker/currency-tracker.service';
import { GetMyTrackersDTO } from '@shared/dto/get-my-trackers.dto';

// Start rate-limiting from the DB. Track all API calls in the last 24 hours.
    // If per-minute rate (5) has been exceeded for alphavantage, tell user to try again in a minute.
    // If per-day rate has been exceeded, tell user to try again tomorrow

// Start using IEX for stocks. https://iextrading.com/developer/docs/#chart
    // Over 100 per second. Assume 150 per second is the limit, then, so as not to risk getting throttled.

// Use CryptoCompare for all currencies. https://min-api.cryptocompare.com/documentation
    // 10 calls per second, 100 per min, 2500/hr, 35,000/day, 100,000/month

@Controller('currencies')
export class CurrenciesController {
    constructor(private readonly currency_data_service: CurrencyDataService,
                private readonly currency_tracker_service: CurrencyTrackerService) {}

    @Get('chart-data')
    @HttpCode(HttpStatus.OK)
    getStockChartData(@Query() query: CurrencyPairIdsDTO): Promise<CurrencyPairChartData> {
        return this.currency_data_service.getChartData(query);
    }

    @Get('my-currency-pairs')
    @HttpCode(HttpStatus.OK)
    getMyCurrencyPairs(@Req() req, @Query() query: GetMyTrackersDTO): Promise<CurrencyPair[]> {
        return this.currency_tracker_service.getMyCurrencyPairs(req.payload.sub
            , query);
    }

    @Post('autocomplete')
    @HttpCode(HttpStatus.OK)
    autocompleteCurrencies(@Body() search_query_dto: CurrencySearchQueryDTO): Promise<Currency[]> {
        return this.currency_tracker_service.autocompleteCurrencies(search_query_dto);
    }

    @Post()
    @HttpCode(HttpStatus.NO_CONTENT)
    addCurrencyPair(@Req() req, @Body() currency_pair: CreateCurrencyPairTrackerDTO): Promise<any> {
        return this.currency_tracker_service.addCurrencyPairTracker(req.payload.sub, currency_pair);
    }

    @Delete()
    @HttpCode(HttpStatus.NO_CONTENT)
    deleteCurrencyPair(@Req() req, @Query() query: CurrencyPairIdsDTO): Promise<any> {
        return this.currency_tracker_service.deleteCurrencyPair(req.payload.sub, query);
    }
}
