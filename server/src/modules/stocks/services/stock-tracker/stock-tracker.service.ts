import { HttpStatus, HttpService, HttpException, Injectable } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { catchError, tap } from 'rxjs/operators';

import { ALPHAVANTAGE_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { Stock } from '@stocks/interfaces/stock.interface';

@Injectable()
export class StockTrackerService {
    private config: ChartmanAppConfig;

    constructor(private readonly config_service: ConfigService,
                private readonly http_service: HttpService,
                private readonly postgres_query_service: PostgresQueryService) {
        this.config = this.config_service.config;
    }

    async autocompleteStocks(search_query: string): Promise<Stock[]> {
        return this.postgres_query_service.queryFunction<Stock[]>({
            function: `fn_auto_complete_stock`,
            params: [search_query],
            returns_array: true,
            err_msg: `Auto-complete failed!`
        });
    }

    async getMyStocks(user_id: number): Promise<Stock[]> {
        return this.postgres_query_service.queryFunction<Stock[]>({
            function: `fn_get_my_stocks`,
            params: [user_id],
            err_msg: `Could not retrieve your stock trackers.`,
            returns_array: true
        });
    }

    async addStockTracker(user_id: number, symbol: string, stock_id: number): Promise<any> {
        const request_url =
            `${ALPHAVANTAGE_PREFIX}function=TIME_SERIES_DAILY&symbol=${symbol}&outputSize=compact&apikey=${this.config.alphavantage_api_key}`;
        const DEFAULT_ERROR_MSG = `Could not create tracker for "${symbol}"!`;
        await this.http_service.get(request_url)
            .pipe(tap((response: AxiosResponse) => {
                if (response.data['Error Message']) {
                    throw new HttpException({
                        name: `Bad Stock Symbol Error`,
                        message: `No data exists for symbol ${symbol}!`,
                        stack: response.data['Error Message']
                    }, HttpStatus.FORBIDDEN);
                }
            }),
            catchError((err: Error) => {
                throw new HttpException({
                    name: err.name,
                    message: DEFAULT_ERROR_MSG,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            })).toPromise();

        return this.postgres_query_service.queryFunction({
            function: `fn_add_stock_tracker`,
            params: [user_id, stock_id],
            err_msg: DEFAULT_ERROR_MSG
        });

    }

async deleteStockTracker(user_id: number, stock_id: number): Promise<any> {
    return this.postgres_query_service.queryFunction({
        function: `fn_delete_stock_tracker`,
        params: [user_id, stock_id],
        err_msg: `Could not delete stock!`
    });
}
}
