import { Injectable, HttpService, HttpStatus } from '@nestjs/common';

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
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';

@Injectable()
export class CurrencyTrackerService {
    private config: ChartmanAppConfig;

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresQueryService: PostgresQueryService) {
        this.config = this.configService.config;
    }

    async addCurrencyPairTracker(userID: number, currencyPair: CreateCurrencyPairTrackerDTO): Promise<any> {
        const requestURL
            = `${CRYPTOCOMPARE_PREFIX}fsym=${currencyPair.from.code}&tsym=${currencyPair.to.code}&limit=1&api_key=${this.config.cryptoCompareApiKey}`;
        await this.httpService.get(requestURL)
            .pipe(map((response: AxiosResponse) => {
                if (response.data[`Response`] === `Error`) {
                    throw new CustomException({
                        name: `CryptoCompare API Error`,
                        message: `Failed to add currency pair!`,
                        stack: response.data['Error Message']
                      }, HttpStatus.FORBIDDEN);
                }
            }))
            .toPromise();
        return this.postgresQueryService.queryFunction({
            function: `fn_add_currency_pair`,
            params: [userID, currencyPair.from.id, currencyPair.to.id],
            errMsg: `Failed to add currency pair!`
        });
    }

    async autocompleteCurrencies(query: CurrencySearchQueryDTO): Promise<Currency[]> {
        return this.postgresQueryService.queryFunction({
            function: `fn_auto_complete_currency`,
            params: [query.searchQuery, query.searchFilter],
            errMsg: `Auto-complete failed!`
        });
    }

    async deleteCurrencyPair(userID: number, pair: CurrencyPairIdsDTO): Promise<any> {
        return this.postgresQueryService.queryFunction({
            function: `fn_delete_currency_pair`,
            params: [userID, pair.fromID, pair.toID],
            errMsg: `Could not delete currency pair!`
        });
    }

    async getMyCurrencyPairs(userID: number): Promise<CurrencyPair[]> {
       return this.postgresQueryService.queryFunction({
           function: `fn_get_my_currency_pairs`,
           params: [userID],
           errMsg: `Failed to retrieve your currency pairs!`
       });
    }

}
