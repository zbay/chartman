import { Injectable, HttpStatus, HttpService } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map, catchError } from 'rxjs/operators';

import { ALPHAVANTAGE_PREFIX, IEX_PROD_PREFIX, IEX_SANDBOX_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CustomException } from '@common/exceptions/custom.exception';
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

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresQueryService: PostgresQueryService,
                private readonly technicalsCalculationService: TechnicalsCalculationService) {
        this.config = this.configService.config;
        this.IEX_PREFIX = this.config.env === `prod` ? IEX_PROD_PREFIX : IEX_SANDBOX_PREFIX;
    }

    async getChartData(symbolID: number): Promise<StockChartData> {
        const stock: Stock = await this.postgresQueryService.queryFunction({
            function: `fn_get_stock`,
            params: [symbolID],
            errMsg: `Could not retrieve the data for this tracker.`
        })
        .then((returnedStock) => {
            // todo: change fn_get_stock to return Stock type
            returnedStock.id = symbolID;
            return returnedStock;
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
