import { Controller, Get, Req, Post, Body, HttpCode, HttpStatus, Query, Delete } from '@nestjs/common';

import { CreateStockTrackerDTO } from '@stocks/dto/create-stock-tracker.dto';
import { SimpleSearchQueryDTO } from '@common/dto/search-query.dto';
import { SimpleStockIdDTO } from '@stocks/dto/simple-stock-id.dto';
import { Stock } from '@stocks/interfaces/stock.interface';
import { StockDataService } from '@stocks/services/stock-data/stock-data.service';
import { StockTrackerService } from '@stocks/services/stock-tracker/stock-tracker.service';
import { StockChartData } from '@stocks/interfaces/stock-chart-data.interface';

@Controller('stocks')
export class StocksController {
    constructor(private readonly stockDataService: StockDataService,
                private readonly stockTrackerService: StockTrackerService) {}

    @Get('chart-data')
    @HttpCode(HttpStatus.OK)
    getStockChartData(@Query() query: SimpleStockIdDTO): Promise<StockChartData> {
        return this.stockDataService.getChartData(query.stockID);
    }

    @Get('my-stocks')
    @HttpCode(HttpStatus.OK)
    getMyStocks(@Req() req): Promise<Stock[]> {
        return this.stockTrackerService.getMyStocks(req.payload.sub);
    }

    @Post('autocomplete')
    @HttpCode(HttpStatus.OK)
    autocompleteStocks(@Body() searchQueryDTO: SimpleSearchQueryDTO): Promise<Stock[]> {
        return this.stockTrackerService.autocompleteStocks(searchQueryDTO.searchQuery);
    }

    @Post()
    @HttpCode(HttpStatus.NO_CONTENT)
    addStockTracker(@Req() req, @Body() createStockTrackerDTO: CreateStockTrackerDTO): Promise<any> {
        return this.stockTrackerService.addStockTracker(req.payload.sub, createStockTrackerDTO.symbol, createStockTrackerDTO.id);
    }

    @Delete()
    @HttpCode(HttpStatus.NO_CONTENT)
    deleteStockTracker(@Req() req, @Query() query: SimpleStockIdDTO): Promise<any> {
        return this.stockTrackerService.deleteStockTracker(req.payload.sub, query.stockID);
    }

}
