import { Injectable, HttpStatus, HttpService, HttpException } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map, catchError } from 'rxjs/operators';

import { ALPHAVANTAGE_PREFIX, IEX_PROD_PREFIX, IEX_SANDBOX_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { Stock } from '@stocks/interfaces/stock.interface';
import { StockChartData } from '@stocks/interfaces/stock-chart-data.interface';
import { TechnicalsCalculationService } from '@technicals/services/technicals-calculation/technicals-calculation.service';
import { ThirdPartyApi } from '@technicals/services/enums/third-party-api.enum';

@Injectable()
export class StockDataService {
    private readonly config: ChartmanAppConfig;
    private readonly IEX_PREFIX: string;

    // TODO: start using IEX and balance the load between it and AlphaVantage.
    // Wait until they've got OHLC data in their new Cloud API, first though

    constructor(private readonly config_service: ConfigService,
                private readonly http_service: HttpService,
                private readonly postgres_query_service: PostgresQueryService,
                private readonly technicals_calculation_service: TechnicalsCalculationService) {
        this.config = this.config_service.config;
        this.IEX_PREFIX = this.config.env === `prod` ? IEX_PROD_PREFIX : IEX_SANDBOX_PREFIX;
    }

    async getChartData(symbol_id: number): Promise<StockChartData> {
        const stock: Stock = await this.postgres_query_service.queryFunction({
            function: `fn_get_stock`,
            params: [symbol_id],
            err_msg: `Could not retrieve the data for this tracker.`
        })
        .then((returned_stock) => {
            // todo: change fn_get_stock to return Stock type
            returned_stock.id = symbol_id;
            return returned_stock;
        });
        const request_url
            = `${ALPHAVANTAGE_PREFIX}function=TIME_SERIES_DAILY&symbol=${stock.symbol}&outputSize=compact&apikey=${this.config.alphavantage_api_key}`;
        return this.http_service.get(request_url)
            .pipe(map((response: AxiosResponse) => {
                if (response.data['Error Message']) {
                    throw new HttpException({
                        name: `Stock Data Retrieval Error`,
                        message: `No data exists for symbol ${stock.symbol}!`,
                        stack: response.data['Error Message']
                    }, HttpStatus.FORBIDDEN);
                }
                const series = this.technicals_calculation_service.standardizeSeriesWithTechnicals(ThirdPartyApi.ALPHA_VANTAGE, response.data).series;
                return { stock, series };
            }),
            catchError((err: Error) => {
                throw new HttpException({
                    name: err.name,
                    message: `Failed to load chart data from 3rd party API!`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            })).toPromise();
    }
}
