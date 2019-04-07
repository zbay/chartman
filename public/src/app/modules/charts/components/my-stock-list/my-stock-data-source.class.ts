import { CollectionViewer } from '@angular/cdk/collections';
import { DataSource } from '@angular/cdk/table';

import { BehaviorSubject, Observable, of } from 'rxjs';
import { catchError, finalize, map } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { PageOperation } from '../../enums/page-operation.enum';

const MIN_STRING = `0`;
const MAX_STRING = `zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz`;

export class MyStockDataSource implements DataSource<Stock> {

    private has_loaded_once = false;
    private loading_subject = new BehaviorSubject<boolean>(false);
    private pagination_query_manager: PaginationQueryManager;
    private stocks$ = new BehaviorSubject<Stock[]>([]);
    public num_stocks$: Observable<number> = this.stocks$.asObservable()
        .pipe(map((stocks: Stock[]) => stocks.length));
    public loading$ = this.loading_subject.asObservable();

    constructor(private readonly error_service: ErrorService,
                private readonly snackbar_service: SnackBarService,
                private readonly stock_service: StockService) {
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `0`,
            function_params: `''`,
            order_by_col: `symbol`,
            order_by_col_type: `text`,
            order_direction: OrderDirection.ASC,
            per_page: 10
          });
    }

    connect(collection_viewer: CollectionViewer): Observable<Stock[]> {
        return this.stocks$.asObservable();
    }

    disconnect(collection_viewer: CollectionViewer): void {
        this.stocks$.complete();
        this.loading_subject.complete();
    }

    loadStocks() {
        if (!this.has_loaded_once) {
            this.has_loaded_once = true;
            this.loading_subject.next(true);
        }
        console.log('loading stocks');
        this.stock_service.getMyStocks(this.pagination_query_manager.options).pipe(
            catchError(() => of([])),
            finalize(() => this.loading_subject.next(false))
        )
        .subscribe(stocks => this.stocks$.next(stocks));
    }

    addStock(new_stock: Stock): void {
        const order_by_col = this.pagination_query_manager.options.order_by_col;
        const order_direction = this.pagination_query_manager.options.order_direction;
        const new_list = [new_stock].concat(this.stocks$.getValue());
        new_list.sort((a: Stock, b: Stock) => {
            if (order_direction === OrderDirection.ASC && a[order_by_col] < b[order_by_col]
                || order_direction === OrderDirection.DESC && a[order_by_col] > b[order_by_col]) {
                    return -1;
            } else {
                return 1;
            }
        });
        this.stocks$.next(new_list);
    }

    filterStocks(filter_criteria: string): void {
        this.updateQueryManager({
            function_params: `'${filter_criteria}'`,
            cursor_point: this.pagination_query_manager.options.order_direction === OrderDirection.ASC
                ? MIN_STRING : MAX_STRING
        });
        this.loadStocks();
    }

    deleteStock(deleted_stock: Stock): void {
        this.stock_service.deleteStock(deleted_stock.id)
        .subscribe(() => {
          this.snackbar_service.openSnackBar(`Tracker for ${deleted_stock.symbol} deleted!`);
          this.stocks$.next(this.stocks$.getValue()
            .filter((stock: Stock) => stock.id !== deleted_stock.id));
        }, (err) => {
          this.showError(err, `Failed to delete tracker for ${deleted_stock.symbol}`, true);
        });
    }

    showError(err: Error, msg: string, customError: boolean = false): void {
        const errMsg = customError ? msg : `Failed to retrieve your data`;
        this.error_service.openErrorDialog({
          message: errMsg,
          name: err.name,
          stack: err.stack
        });
      }

    updateQueryManager(opts: any, page_op: PageOperation = PageOperation.NONE) {
        Object.assign(this.pagination_query_manager.options, opts);
        this.pagination_query_manager.setNextCursor(this.stocks$.getValue(), page_op);
      }

}
