import { CollectionViewer } from '@angular/cdk/collections';
import { DataSource } from '@angular/cdk/table';
import { Sort } from '@angular/material';

import { BehaviorSubject, Observable, merge, of } from 'rxjs';
import { filter, map, catchError, finalize } from 'rxjs/operators';

import { CurrencyPair } from '@charts/models/currency-pair';
import { CurrencyService } from '@charts/services/currency/currency.service';
import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PageOperation } from '../../enums/page-operation.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

const MIN_STRING = `0`;
const MAX_STRING = `zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz`;

export class MyCurrencyPairDataSource implements DataSource<CurrencyPair> {

    private has_loaded_once = false;
    private currency_pairs$ = new BehaviorSubject<CurrencyPair[]>([]);
    private _loading$ = new BehaviorSubject<boolean>(false);
    private pagination_query_manager: PaginationQueryManager;
    private loaded_currency_pairs$ = new BehaviorSubject<CurrencyPair[]>([]);
    private _num_currency_pairs$ = new BehaviorSubject<number>(0);
    private _reachedLastPage$ = new BehaviorSubject<boolean>(false);
    private _new_currency_pair$: Observable<CurrencyPair>;
    public num_currency_pairs$: Observable<number> = merge(
        this._num_currency_pairs$.asObservable(),
        this._reachedLastPage$
            .pipe(filter((reachedLastPage: boolean) => reachedLastPage),
                map(() => 0)
        ));

    public loading$ = this._loading$.asObservable();

    constructor(private readonly error_service: ErrorService,
                private readonly snackbar_service: SnackBarService,
                private readonly currency_service: CurrencyService) {
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `''`,
            order_by_col: `sort_id`,
            order_by_col_type: `text`,
            order_direction: OrderDirection.ASC,
            per_page: 10
          });
        this._new_currency_pair$ = this.currency_service.new_currency_pair$;
    }

    connect(collection_viewer: CollectionViewer): Observable<CurrencyPair[]> {
        this._new_currency_pair$.subscribe((pair: CurrencyPair) => {
            this.addCurrencyPair(pair);
        });
        return this.currency_pairs$.asObservable();
    }

    disconnect(collection_viewer: CollectionViewer): void {
        this.currency_pairs$.complete();
        this._loading$.complete();
        this._num_currency_pairs$.complete();
        this._reachedLastPage$.complete();
        this.loaded_currency_pairs$.complete();
    }

    addCurrencyPair(new_pair: CurrencyPair): void {
        const order_by_col = this.pagination_query_manager.options.order_by_col;
        const order_direction = this.pagination_query_manager.options.order_direction;
        const new_list = [new_pair].concat(this.currency_pairs$.getValue());
        new_list.sort((a: CurrencyPair, b: CurrencyPair) => {
            if (order_direction === OrderDirection.ASC && a[order_by_col] < b[order_by_col]
                || order_direction === OrderDirection.DESC && a[order_by_col] > b[order_by_col]) {
                    return -1;
            } else {
                return 1;
            }
        });
        this.currency_pairs$.next(new_list);
    }

    deleteCurrencyPair(deleted_currency_pair: CurrencyPair): void {
        this.currency_service.deleteCurrencyPair(deleted_currency_pair.from.id, deleted_currency_pair.to.id)
        .subscribe(() => {
            this.currency_pairs$.next(this.currency_pairs$.getValue()
            .filter((currency_pair) => {
              return (currency_pair.from.id !== deleted_currency_pair.from.id)
                || (currency_pair.to.id !== deleted_currency_pair.to.id);
            }));
          this.snackbar_service.openSnackBar(`Currency pair deleted!`);
        }, (err) => {
          this.showError(err, `Failed to delete currency pair!`, true);
        });
    }

    filterStocks(filter_criteria: string): void {
        this.updateQueryManager({
            cursor_point: this.pagination_query_manager.options.order_direction === OrderDirection.ASC
                ? MIN_STRING : MAX_STRING
        });
        this.loadCurrencyPairs(filter_criteria);
    }


    loadCurrencyPairs(search_filter: string = ``) {
        if (!this.has_loaded_once) {
            this.has_loaded_once = true;
            this._loading$.next(true);
        }
        console.log(this.pagination_query_manager.options);
        this.currency_service.getMyCurrencyPairs(this.pagination_query_manager.options, search_filter).pipe(
            catchError(() => of([])),
            finalize(() => this._loading$.next(false))
        )
        .subscribe((pairs: CurrencyPair[]) => {
            this._num_currency_pairs$.next(pairs.length);
            if (pairs.length === 0 && this.currency_pairs$.getValue().length) {
                if (search_filter) {
                    this.currency_pairs$.next(pairs);
                } else {
                    this._reachedLastPage$.next(true);
                }
            } else {
                this._reachedLastPage$.next(false);
                this.currency_pairs$.next(pairs);
                this.loaded_currency_pairs$.next(pairs);
            }
        }, (err) => {
            this.showError(err, `Failed to load trackers!`, true);
        });
    }

    setSort(s: Sort) {
        this.updateQueryManager({
            order_direction: s.direction === 'asc' ? OrderDirection.ASC : OrderDirection.DESC,
            order_by_col: s.active,
            cursor_point: s.direction === `asc` ? `0` : `zzzzzzzzzzzzzzzzzzzz`
          }, PageOperation.NONE);
          this.loadCurrencyPairs();
    }

    setPerPage(per_page: number) {
        this.updateQueryManager({
            per_page: per_page
        }, PageOperation.SIZE_CHANGE);
        this.loadCurrencyPairs();
    }

    turnPage(flip_is_forward: boolean) {
        this.updateQueryManager({}, flip_is_forward ? PageOperation.FORWARD : PageOperation.BACKWARD);
        this.loadCurrencyPairs();
    }

    private showError(err: Error, msg: string, customError: boolean = false): void {
        const errMsg = customError ? msg : `Failed to retrieve your data`;
        this.error_service.openErrorDialog({
          message: errMsg,
          name: err.name,
          stack: err.stack
        });
    }

    private updateQueryManager(opts: any, page_op: PageOperation = PageOperation.NONE) {
        Object.assign(this.pagination_query_manager.options, opts);
        this.pagination_query_manager.setNextCursor(this.loaded_currency_pairs$.getValue(), page_op);
        // Use loaded_stocks$ for setting the cursor since we can't plan for what the user may have added/deleted from the current page
      }
}
