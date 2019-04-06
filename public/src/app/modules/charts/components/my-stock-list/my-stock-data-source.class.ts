import { CollectionViewer } from '@angular/cdk/collections';
import { DataSource } from '@angular/cdk/table';

import { BehaviorSubject, Observable, of } from 'rxjs';
import { catchError, finalize } from 'rxjs/operators';

import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { ErrorService } from '@app/services/error/error.service';

// TODO: have real page numbers, and reorganize for better separation of concerns
export class MyStockDataSource implements DataSource<Stock> {

    private stocks$ = new BehaviorSubject<Stock[]>([]);
    private loadingSubject = new BehaviorSubject<boolean>(false);
    private paginationQueryManager: PaginationQueryManager;

    public loading$ = this.loadingSubject.asObservable();

    constructor(private readonly error_service: ErrorService,
                private readonly snackbar_service: SnackBarService,
                private readonly stock_service: StockService) {
        this.paginationQueryManager = new PaginationQueryManager({
            cursor_point: `0`,
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
        this.loadingSubject.complete();
    }

    loadStocks() {

        this.loadingSubject.next(true);

        this.stock_service.getMyStocks(this.paginationQueryManager.options).pipe(
            catchError(() => of([])),
            finalize(() => this.loadingSubject.next(false))
        )
        .subscribe(lessons => this.stocks$.next(lessons));
    }

    addStock(new_stock: Stock): void {
        const order_by_col = this.paginationQueryManager.options.order_by_col;
        const order_direction = this.paginationQueryManager.options.order_direction;
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
            where_condition: ` q->>'symbol' ILIKE '%${filter_criteria}%'
                OR q->>'name' ILIKE '%${filter_criteria}%'`,
            cursor_point: this.paginationQueryManager.options.order_direction === OrderDirection.ASC
                ? `0` : `ZZZZZZZZZZZZZZZZZZZZ`
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

    updateQueryManager(opts: any, update_cursor: boolean = false) {
        Object.assign(this.paginationQueryManager.options, opts);
        if (update_cursor) {
            this.paginationQueryManager.setNextCursor(this.stocks$.getValue());
        }
      }

}
