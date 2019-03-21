import { Injectable, HttpStatus, HttpService } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { Pool, QueryResult } from 'pg';
import { map, catchError } from 'rxjs/operators';

import { ALPHAVANTAGE_PREFIX, IEX_PROD_PREFIX, IEX_SANDBOX_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresService } from '@shared/services/postgres/postgres.service';
import { Stock } from '@stocks/interfaces/stock.interface';
import { StockChartData } from '@stocks/interfaces/stock-chart-data.interface';
import { TechnicalsCalculationService } from '@technicals/services/technicals-calculation/technicals-calculation.service';
import { ThirdPartyApi } from '@technicals/services/enums/third-party-api.enum';

@Injectable()
export class StockDataService {
    private readonly config: ChartmanAppConfig;
    private readonly IEX_PREFIX: string;
    private readonly pool: Pool;

    // TODO: start using IEX and balance the load between it and AlphaVantage.
    // Wait until they've got OHLC data in their new Cloud API, first though

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresService: PostgresService,
                private readonly technicalsCalculationService: TechnicalsCalculationService) {
        this.config = this.configService.config;
        this.pool = this.postgresService.pool;
        this.IEX_PREFIX = this.config.env === `prod` ? IEX_PROD_PREFIX : IEX_SANDBOX_PREFIX;
    }

    async getChartData(symbolID: number): Promise<StockChartData> {
        const rowName = `stock`;
        const stock: Stock = await this.pool.query(`SELECT * from public.fn_get_stock($1) AS ${rowName}`
            , [symbolID])
            .then((data: QueryResult) => {
                const returnedStock = data.rows[0][rowName];
                returnedStock.id = symbolID;
                return returnedStock;
            })
            .catch((err: Error) => {
                throw new CustomException({
                    stack: err.stack,
                    message: `Could not retrieve the data for this tracker.`,
                    name: err.message
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
        const requestURL
            = `${ALPHAVANTAGE_PREFIX}function=TIME_SERIES_DAILY&symbol=${stock.symbol}&outputSize=compact&apikey=${this.config.alphaVantageApiKey}`;
        return this.httpService.get(requestURL)
            .pipe(map((response: AxiosResponse) => {
                if (response.data['Error Message']) {
                    throw new CustomException({
                        name: `Stock Data Retrieval Error`,
                        message: `No data exists for symbol ${stock.symbol}!`,
                        stack: response.data['Error Message']
                    }, HttpStatus.FORBIDDEN);
                }
                const series = this.technicalsCalculationService.standardizeSeriesWithTechnicals(ThirdPartyApi.ALPHA_VANTAGE, response.data).series;
                return { stock, series };
            }),
            catchError((err: Error) => {
                throw new CustomException({
                    name: err.name,
                    message: `Failed to load chart data from 3rd party API!`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            })).toPromise();
    }
}
