import { Injectable, HttpService, HttpStatus, HttpException } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map, catchError } from 'rxjs/operators';

import { CRYPTOCOMPARE_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairChartData } from '@currencies/interfaces/currency-pair-chart-data.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { TechnicalsCalculationService } from '@technicals/services/technicals-calculation/technicals-calculation.service';
import { TechnicalDataPoint } from '@technicals/interfaces/technical-data-point';
import { ThirdPartyApi } from '@technicals/services/enums/third-party-api.enum';

@Injectable()
export class CurrencyDataService {
    private config: ChartmanAppConfig;

    constructor(private readonly config_service: ConfigService,
                private readonly http_service: HttpService,
                private readonly postgres_query_service: PostgresQueryService,
                private readonly technicals_calculation_service: TechnicalsCalculationService) {
        this.config = this.config_service.config;
    }

    async getChartData(query: CurrencyPairIdsDTO): Promise<CurrencyPairChartData> {
        const pair: CurrencyPair = await this.postgres_query_service.queryFunction({
            function: `fn_get_currency_pair`,
            params: [query.from_id, query.to_id],
            err_msg: `Could not retrieve the data for this currency pair.`
        });
        const from = pair.from;
        const to = pair.to;
        const requestURL
            = `${CRYPTOCOMPARE_PREFIX}fsym=${from.code}&tsym=${to.code}&limit=52&api_key=${this.config.cryptocompare_api_key}`;
        return this.http_service.get(requestURL)
            .pipe(map((response: AxiosResponse) => {
                if (response.data[`Response`] === `Error`) {
                    throw new HttpException({
                        name: `CryptoCompare Retrieval Error`,
                        message: `Could not retrieve the data for this currency pair.`,
                        stack: response.data[`Message`]
                    }, HttpStatus.FORBIDDEN);
                }
                const series: TechnicalDataPoint[]
                    = this.technicals_calculation_service.standardizeSeriesWithTechnicals(ThirdPartyApi.CRYPTO_COMPARE, response.data).series;
                return { currencyPair: pair, series };
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
