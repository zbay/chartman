import { CollectionViewer } from '@angular/cdk/collections';
import { DataSource } from '@angular/cdk/table';
import { Sort } from '@angular/material';

import { BehaviorSubject, Observable, of, merge } from 'rxjs';
import { catchError, finalize, map, filter } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PageOperation } from '@charts/enums/page-operation.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';

const MIN_STRING = `0`;
const MAX_STRING = `zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz`;

export class MyStockDataSource implements DataSource<Stock> {

    private has_loaded_once = false;
    private loaded_stocks$ = new BehaviorSubject<Stock[]>([]);
    private _loading$ = new BehaviorSubject<boolean>(false);
    private pagination_query_manager: PaginationQueryManager;
    private stocks$ = new BehaviorSubject<Stock[]>([]);
    private _num_stocks$ = new BehaviorSubject<number>(0);
    private _reachedLastPage$ = new BehaviorSubject<boolean>(false);
    private _new_stock$: Observable<Stock>;

    public num_stocks$: Observable<number> = merge(
        this._num_stocks$.asObservable(),
        this._reachedLastPage$
            .pipe(filter((reachedLastPage: boolean) => reachedLastPage),
                map(() => 0)
        ));
    public loading$ = this._loading$.asObservable();

    constructor(private readonly error_service: ErrorService,
                private readonly snackbar_service: SnackBarService,
                private readonly stock_service: StockService) {
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `0`,
            order_by_col: `symbol`,
            order_by_col_type: `text`,
            order_direction: OrderDirection.ASC,
            per_page: 10
          });
        this._new_stock$ = this.stock_service.new_stock$;
    }

    connect(collection_viewer: CollectionViewer): Observable<Stock[]> {
        this._new_stock$.subscribe((stock: Stock) => {
            this.addStock(stock);
        });
        return this.stocks$.asObservable();
    }

    disconnect(collection_viewer: CollectionViewer): void {
        this.stocks$.complete();
        this._loading$.complete();
        this._num_stocks$.complete();
        this._reachedLastPage$.complete();
        this.loaded_stocks$.complete();
    }

    loadStocks(search_filter: string = ``) {
        if (!this.has_loaded_once) {
            this.has_loaded_once = true;
            this._loading$.next(true);
        }
        console.log(this.pagination_query_manager.options);
        this.stock_service.getMyStocks(this.pagination_query_manager.options, search_filter).pipe(
            catchError(() => of([])),
            finalize(() => this._loading$.next(false))
        )
        .subscribe((stocks: Stock[]) => {
            this._num_stocks$.next(stocks.length);
            if (stocks.length === 0 && this.stocks$.getValue().length) {
                if (search_filter) {
                    this.stocks$.next(stocks);
                } else {
                    this._reachedLastPage$.next(true);
                }
            } else {
                this._reachedLastPage$.next(false);
                this.stocks$.next(stocks);
                this.loaded_stocks$.next(stocks);
            }
        }, (err) => {
            this.showError(err, `Failed to load trackers!`, true);
        });
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
            cursor_point: this.pagination_query_manager.options.order_direction === OrderDirection.ASC
                ? MIN_STRING : MAX_STRING
        });
        this.loadStocks(filter_criteria);
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

    setSort(s: Sort) {
        this.updateQueryManager({
            order_direction: s.direction === 'asc' ? OrderDirection.ASC : OrderDirection.DESC,
            order_by_col: s.active,
            cursor_point: s.direction === `asc` ? `0` : `zzzzzzzzzzzzzzzzzzzz`
          }, PageOperation.NONE);
          this.loadStocks();
    }

    private showError(err: Error, msg: string, customError: boolean = false): void {
        const errMsg = customError ? msg : `Failed to retrieve your data`;
        this.error_service.openErrorDialog({
          message: errMsg,
          name: err.name,
          stack: err.stack
        });
      }

    setPerPage(per_page: number) {
        this.updateQueryManager({
            per_page: per_page
        }, PageOperation.SIZE_CHANGE);
        this.loadStocks();
    }

    turnPage(flip_is_forward: boolean) {
        this.updateQueryManager({}, flip_is_forward ? PageOperation.FORWARD : PageOperation.BACKWARD);
        this.loadStocks();
    }

    private updateQueryManager(opts: any, page_op: PageOperation = PageOperation.NONE) {
        Object.assign(this.pagination_query_manager.options, opts);
        this.pagination_query_manager.setNextCursor(this.loaded_stocks$.getValue(), page_op);
        // Use loaded_stocks$ for setting the cursor since we can't plan for what the user may have added/deleted from the current page
      }

}
