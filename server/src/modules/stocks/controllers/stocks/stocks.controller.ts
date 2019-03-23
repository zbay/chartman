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
    constructor(private readonly stock_data_service: StockDataService,
                private readonly stock_tracker_service: StockTrackerService) {}

    @Get('chart-data')
    @HttpCode(HttpStatus.OK)
    getStockChartData(@Query() query: SimpleStockIdDTO): Promise<StockChartData> {
        return this.stock_data_service.getChartData(query.stock_id);
    }

    @Get('my-stocks')
    @HttpCode(HttpStatus.OK)
    getMyStocks(@Req() req): Promise<Stock[]> {
        return this.stock_tracker_service.getMyStocks(req.payload.sub);
    }

    @Post('autocomplete')
    @HttpCode(HttpStatus.OK)
    autocompleteStocks(@Body() search_query_dto: SimpleSearchQueryDTO): Promise<Stock[]> {
        return this.stock_tracker_service.autocompleteStocks(search_query_dto.search_query);
    }

    @Post()
    @HttpCode(HttpStatus.NO_CONTENT)
    addStockTracker(@Req() req, @Body() create_stock_tracker_dto: CreateStockTrackerDTO): Promise<any> {
        return this.stock_tracker_service.addStockTracker(req.payload.sub, create_stock_tracker_dto.symbol, create_stock_tracker_dto.id);
    }

    @Delete()
    @HttpCode(HttpStatus.NO_CONTENT)
    deleteStockTracker(@Req() req, @Query() query: SimpleStockIdDTO): Promise<any> {
        return this.stock_tracker_service.deleteStockTracker(req.payload.sub, query.stock_id);
    }

}
