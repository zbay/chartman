import { Injectable, HttpStatus, HttpService } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { catchError, tap } from 'rxjs/operators';
import { Pool, QueryResult } from 'pg';

import { ALPHAVANTAGE_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresService } from '@shared/services/postgres/postgres.service';
import { Stock } from '@stocks/interfaces/stock.interface';

@Injectable()
export class StockTrackerService {
    private config: ChartmanAppConfig;
    private pool: Pool;

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresService: PostgresService) {
        this.config = this.configService.config;
        this.pool = this.postgresService.pool;
    }

    async autocompleteStocks(searchQuery: string): Promise<Stock[]> {
        const rowName = 'search_result';
        return this.pool.query(`SELECT * FROM public.fn_auto_complete_stock($1) AS search_result`,
            [searchQuery])
        .then((results: QueryResult) => {
            return results.rows.map((row) => row[rowName]);
        })
        .catch((err: Error) => {
            throw new CustomException({
                stack: err.stack,
                message: `Auto-complete failed!`,
                name: err.name
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

    async getMyStocks(userID: number): Promise<Stock[]> {
        return this.pool.query(`SELECT * FROM public.fn_get_my_stocks($1) AS stock`,
            [userID])
        .then((results: QueryResult) => {
            // todo: abstract this map pattern
            return results.rows.map((row) => row.stock);
        })
        .catch((err: Error) => {
            throw new CustomException({
                name: `Stock Retrieval Error`,
                message: `Could not retrieve your stock trackers.`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });
    }

    async addStockTracker(userID: number, symbol: string, stockID: number): Promise<any> {
        const requestURL =
            `${ALPHAVANTAGE_PREFIX}function=TIME_SERIES_DAILY&symbol=${symbol}&outputSize=compact&apikey=${this.config.alphaVantageApiKey}`;
        const DEFAULT_ERROR_MSG = `Could not create tracker for "${symbol}"!`;
        await this.httpService.get(requestURL)
            .pipe(tap((response: AxiosResponse) => {
                if (response.data['Error Message']) {
                    throw new CustomException({
                        name: `Bad Stock Symbol Error`,
                        message: `No data exists for symbol ${symbol}!`,
                        stack: response.data['Error Message']
                    }, HttpStatus.FORBIDDEN);
                }
            }),
            catchError((err: Error) => {
                throw new CustomException({
                    name: err.name,
                    message: DEFAULT_ERROR_MSG,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            })).toPromise();

        return this.pool.query(`SELECT public.fn_add_stock_tracker($1, $2)`,
            [userID, stockID])
        .catch((err: Error) => {
            throw new CustomException({
                name: `Stock Tracker Add Error`,
                message: DEFAULT_ERROR_MSG,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
        });

    }

async deleteStockTracker(userID: number, stockID: number): Promise<any> {
    return this.pool.query(`SELECT from public.fn_delete_stock_tracker($1, $2)`,
        [userID, stockID])
    .catch((err: Error) => {
        throw new CustomException({
            stack: err.stack,
            message: `Could not delete stock!`,
            name: err.name
        }, HttpStatus.INTERNAL_SERVER_ERROR);
    });

}
}
