import { Injectable, HttpService, HttpStatus } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map, catchError } from 'rxjs/operators';
import { Pool, QueryResult } from 'pg';

import { CRYPTOCOMPARE_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairChartData } from '@currencies/interfaces/currency-pair-chart-data.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresConnectionService } from '@shared/services/postgres-connection/postgres.connection.service';
import { TechnicalsCalculationService } from '@technicals/services/technicals-calculation/technicals-calculation.service';
import { TechnicalDataPoint } from '@technicals/interfaces/technical-data-point';
import { ThirdPartyApi } from '@technicals/services/enums/third-party-api.enum';

@Injectable()
export class CurrencyDataService {
    private config: ChartmanAppConfig;
    private pool: Pool;

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresService: PostgresConnectionService,
                private readonly technicalsCalculationService: TechnicalsCalculationService) {
        this.config = this.configService.config;
        this.pool = this.postgresService.pool;
    }

    async getChartData(query: CurrencyPairIdsDTO): Promise<CurrencyPairChartData> {
        const rowName = `pair`;
        const pair: CurrencyPair = await this.pool.query(`SELECT * FROM public.fn_get_currency_pair($1, $2) AS ${rowName}`
        , [query.fromID, query.toID])
        .then((result: QueryResult) => {
            return result.rows[0][rowName];
        })
        .catch((err: Error) => {
            return new CustomException({
                name: err.name,
                message: `Could not retrieve the data for this currency pair.`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });

        const from = pair.from;
        const to = pair.to;
        const requestURL
            = `${CRYPTOCOMPARE_PREFIX}fsym=${from.code}&tsym=${to.code}&limit=52&api_key=${this.config.cryptoCompareApiKey}`;
        return this.httpService.get(requestURL)
            .pipe(map((response: AxiosResponse) => {
                if (response.data[`Response`] === `Error`) {
                    throw new CustomException({
                        name: `CryptoCompare Retrieval Error`,
                        message: `Could not retrieve the data for this currency pair.`,
                        stack: response.data[`Message`]
                    }, HttpStatus.FORBIDDEN);
                }
                const series: TechnicalDataPoint[]
                    = this.technicalsCalculationService.standardizeSeriesWithTechnicals(ThirdPartyApi.CRYPTO_COMPARE, response.data).series;
                return { currencyPair: pair, series };
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
