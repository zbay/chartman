import { Injectable, HttpService, HttpStatus } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { map } from 'rxjs/operators';
import { Pool, QueryResult } from 'pg';

import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CreateCurrencyPairTrackerDTO } from '@currencies/dto/create-currency-pair-tracker.dto';
import { CRYPTOCOMPARE_PREFIX } from '@common/vars/prefixes';
import { Currency } from '@currencies/interfaces/currency.interface';
import { CurrencyPair } from '@currencies/interfaces/currency-pair.interface';
import { CurrencyPairIdsDTO } from '@currencies/dto/currency-pair-ids.dto';
import { CurrencySearchQueryDTO } from '@currencies/dto/currency-search-query.dto';
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresConnectionService } from '@shared/services/postgres-connection/postgres.connection.service';

@Injectable()
export class CurrencyTrackerService {
    private config: ChartmanAppConfig;
    private pool: Pool;

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresService: PostgresConnectionService) {
        this.config = this.configService.config;
        this.pool = this.postgresService.pool;
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
        return this.pool.query(`SELECT public.fn_add_currency_pair($1, $2, $3)`
            , [userID, currencyPair.from.id, currencyPair.to.id])
        .catch((err: Error) => {
            throw new CustomException({
                name: `Currency Pair Tracking Error`,
                message: `Failed to add currency pair!`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

    async autocompleteCurrencies(query: CurrencySearchQueryDTO): Promise<Currency[]> {
        const rowName = `search_result`;
        return this.pool.query(`SELECT * FROM public.fn_auto_complete_currency($1, $2) AS ${rowName}`,
            [query.searchQuery, query.searchFilter])
        .then((results: QueryResult) => {
            return results.rows.map((row) => row[rowName]);
        })
        .catch((err: Error) => {
            throw new CustomException({
                name: err.name,
                message: `Auto-complete failed!`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);

        });
    }

    async deleteCurrencyPair(userID: number, pair: CurrencyPairIdsDTO): Promise<any> {
        return this.pool.query(`SELECT public.fn_delete_currency_pair($1, $2, $3)`,
            [userID, pair.fromID, pair.toID])
        .catch((err: Error) => {
            throw new CustomException({
                name: err.name,
                message: `Could not delete currency pair!`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

    async getMyCurrencyPairs(userID: number): Promise<CurrencyPair[]> {
       const rowName = `currency_pair`;
       return this.pool.query(`SELECT * FROM public.fn_get_my_currency_pairs($1) AS ${rowName}`,
            [userID])
        .then((results: QueryResult) => {
            return results.rows.map((row) => row[rowName]);
        })
        .catch((err: Error) => {
            throw new CustomException({
                name: err.name,
                stack: err.stack,
                message: `Failed to retrieve your currency pairs!`
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

}
