import { Controller, Query, Get, HttpCode, HttpStatus, Post, Req, Delete, Body } from '@nestjs/common';

import { CreateCurrencyPairTrackerDTO } from '@currencies/dto/create-currency-pair-tracker.dto';
import { Currency } from '@currencies/interfaces/currency.interface';
import { CurrencyDataService } from '@currencies/services/currency-data/currency-data.service';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairChartData } from '@currencies/interfaces/currency-pair-chart-data.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { CurrencySearchQueryDTO } from '@currencies/dto/currency-search-query.dto';
import { CurrencyTrackerService } from '@currencies/services/currency-tracker/currency-tracker.service';

// Start rate-limiting from the DB. Track all API calls in the last 24 hours.
    // If per-minute rate (5) has been exceeded for alphavantage, tell user to try again in a minute.
    // If per-day rate has been exceeded, tell user to try again tomorrow

// Start using IEX for stocks. https://iextrading.com/developer/docs/#chart
    // Over 100 per second. Assume 150 per second is the limit, then, so as not to risk getting throttled.

// Use CryptoCompare for all currencies. https://min-api.cryptocompare.com/documentation
    // 10 calls per second, 100 per min, 2500/hr, 35,000/day, 100,000/month

@Controller('currencies')
export class CurrenciesController {
    constructor(private readonly currencyDataService: CurrencyDataService,
                private readonly currencyTrackerService: CurrencyTrackerService) {}

    @Get('chart-data')
    @HttpCode(HttpStatus.OK)
    getStockChartData(@Query() query: CurrencyPairIdsDTO): Promise<CurrencyPairChartData> {
        return this.currencyDataService.getChartData(query);
    }

    @Get('my-currency-pairs')
    @HttpCode(HttpStatus.OK)
    getMyCurrencyPairs(@Req() req): Promise<CurrencyPair[]> {
        return this.currencyTrackerService.getMyCurrencyPairs(req.payload.sub);
    }

    @Post('autocomplete')
    @HttpCode(HttpStatus.OK)
    autocompleteCurrencies(@Body() searchQueryDTO: CurrencySearchQueryDTO): Promise<Currency[]> {
        return this.currencyTrackerService.autocompleteCurrencies(searchQueryDTO);
    }

    @Post()
    @HttpCode(HttpStatus.NO_CONTENT)
    addCurrencyPair(@Req() req, @Body() currencyPair: CreateCurrencyPairTrackerDTO): Promise<any> {
        return this.currencyTrackerService.addCurrencyPairTracker(req.payload.sub, currencyPair);
    }

    @Delete()
    @HttpCode(HttpStatus.NO_CONTENT)
    deleteCurrencyPair(@Req() req, @Query() query: CurrencyPairIdsDTO): Promise<any> {
        return this.currencyTrackerService.deleteCurrencyPair(req.payload.sub, query);
    }
}
