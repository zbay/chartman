import { Injectable, HttpService, HttpStatus, HttpException } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map } from 'rxjs/operators';

import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CreateCurrencyPairTrackerDTO } from '@currencies/dto/create-currency-pair-tracker.dto';
import { CRYPTOCOMPARE_PREFIX } from '@common/vars/prefixes';
import { Currency } from '@currencies/interfaces/currency.interface';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { CurrencySearchQueryDTO } from '@currencies/dto/currency-search-query.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { GetMyTrackersDTO } from '@shared/dto/get-my-trackers.dto';

@Injectable()
export class CurrencyTrackerService {
    private config: ChartmanAppConfig;

    constructor(private readonly config_service: ConfigService,
                private readonly http_service: HttpService,
                private readonly postgres_query_service: PostgresQueryService) {
        this.config = this.config_service.config;
    }

    async addCurrencyPairTracker(user_id: number, currency_pair: CreateCurrencyPairTrackerDTO): Promise<any> {
        const request_url
            = `${CRYPTOCOMPARE_PREFIX}fsym=${currency_pair.from.code}&tsym=${currency_pair.to.code}&limit=1
            &api_key=${this.config.cryptocompare_api_key}`;
        await this.http_service.get(request_url)
            .pipe(map((response: AxiosResponse) => {
                if (response.data[`Response`] === `Error`) {
                    throw new HttpException({
                        name: `CryptoCompare API Error`,
                        message: `Failed to add currency pair!`,
                        stack: response.data['Error Message']
                      }, HttpStatus.FORBIDDEN);
                }
            }))
            .toPromise();
        return this.postgres_query_service.queryFunction({
            function: `fn_add_currency_pair`,
            params: [user_id, currency_pair.from.id, currency_pair.to.id],
            err_msg: `Failed to add currency pair!`
        });
    }

    async autocompleteCurrencies(query: CurrencySearchQueryDTO): Promise<Currency[]> {
        return this.postgres_query_service.queryFunction({
            function: `fn_auto_complete_currency`,
            params: [query.search_query, query.search_filter],
            err_msg: `Auto-complete failed!`,
            returns_array: true
        });
    }

    async deleteCurrencyPair(user_id: number, pair: CurrencyPairIdsDTO): Promise<any> {
        return this.postgres_query_service.queryFunction({
            function: `fn_delete_currency_pair`,
            params: [user_id, pair.from_id, pair.to_id],
            err_msg: `Could not delete currency pair!`
        });
    }
    async getMyCurrencyPairs(user_id: number, options: GetMyTrackersDTO): Promise<CurrencyPair[]> {
        return this.postgres_query_service.queryFunctionWithPagination(Object.assign(options, {
            function: `fn_get_my_currency_pairs`,
            function_params: [user_id, `'${options.search_filter}'`],
            err_msg: `Could not retrieve your currency pairs.`
        }));
    }
}
