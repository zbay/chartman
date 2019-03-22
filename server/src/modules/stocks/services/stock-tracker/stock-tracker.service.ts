import { Injectable, HttpStatus, HttpService } from '@nestjs/common';

import { AxiosResponse } from 'axios';
import { catchError, tap } from 'rxjs/operators';

import { ALPHAVANTAGE_PREFIX } from '@common/vars/prefixes';
import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { ConfigService } from '@shared/services/config/config.service';
import { CustomException } from '@common/exceptions/custom.exception';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { Stock } from '@stocks/interfaces/stock.interface';

@Injectable()
export class StockTrackerService {
    private config: ChartmanAppConfig;

    constructor(private readonly configService: ConfigService,
                private readonly httpService: HttpService,
                private readonly postgresQueryService: PostgresQueryService) {
        this.config = this.configService.config;
    }

    async autocompleteStocks(searchQuery: string): Promise<Stock[]> {
        return this.postgresQueryService.queryFunction({
            function: `fn_auto_complete_stock`,
            params: [searchQuery],
            isArray: true,
            errMsg: `Auto-complete failed!`
        });
    }

    async getMyStocks(userID: number): Promise<Stock[]> {
        return this.postgresQueryService.queryFunction({
            function: `fn_get_my_stocks`,
            params: [userID],
            errMsg: `Could not retrieve your stock trackers.`,
            isArray: true
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

        return this.postgresQueryService.queryFunction({
            function: `fn_add_stock_tracker`,
            params: [userID, stockID],
            errMsg: DEFAULT_ERROR_MSG
        });

    }

async deleteStockTracker(userID: number, stockID: number): Promise<any> {
    return this.postgresQueryService.queryFunction({
        function: `fn_delete_stock_tracker`,
        params: [userID, stockID],
        errMsg: `Could not delete stock!`
    });
}
}
