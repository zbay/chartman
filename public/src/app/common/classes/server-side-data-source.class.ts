import { CollectionViewer } from '@angular/cdk/collections';
import { Sort } from '@angular/material';

import { BehaviorSubject, merge, Observable, of } from 'rxjs';
import { catchError, filter, finalize, map } from 'rxjs/operators';

import { ColumnSortType } from '@common/enums/column-sort-type.enum';
import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { OrderDirection } from '@common/enums/order-direction.enum';
import { PageOperation } from '@common/enums/page-operation.enum';
import { PaginationQueryManager } from '@common/classes/pagination-query-manager.class';
import { SearchablePaginationOptions } from '@common/interfaces/searchable-pagination-options.enum';

const MIN_STRING = `0`;
const MAX_STRING = `zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz`;
const MIN_INT = Number.MIN_SAFE_INTEGER;
const MAX_INT = Number.MAX_SAFE_INTEGER;
const MIN_DATE = `1970-01-01 00:00:00`;
const MAX_DATE = `4000-12-31 23:59:59`;

export abstract class ServerSideDataSource<I, O extends SearchablePaginationOptions> {

    protected has_loaded_once = false;
    protected loaded_items$ = new BehaviorSubject<I[]>([]);
    protected _loading$ = new BehaviorSubject<boolean>(false);
    protected pagination_query_manager: PaginationQueryManager<O>;
    protected items$ = new BehaviorSubject<I[]>([]);
    protected _num_items$ = new BehaviorSubject<number>(0);
    protected _reachedLastPage$ = new BehaviorSubject<boolean>(false);
    protected _new_item$: Observable<I>;
    protected last_searched_filter = `''`;

    public num_items$: Observable<number> = merge(
        this._num_items$.asObservable(),
        this._reachedLastPage$
            .pipe(filter((reachedLastPage: boolean) => reachedLastPage),
                map(() => 0)
        ));
    public loading$ = this._loading$.asObservable();

    constructor(protected readonly error_service: ErrorService,
        protected readonly snackbar_service: SnackBarService) {
    }

    connect(collection_viewer: CollectionViewer): Observable<I[]> {
        if (this._new_item$) {
            this._new_item$.subscribe((item: I) => {
                this.addItem(item);
            });
        }
        return this.items$.asObservable();
    }

    disconnect(collection_viewer: CollectionViewer): void {
        this.items$.complete();
        this._loading$.complete();
        this._num_items$.complete();
        this._reachedLastPage$.complete();
        this.loaded_items$.complete();
    }

    protected abstract loadItemsFromServer(options: O): Observable<I[]>;

    loadItems(): void {
        if (!this.has_loaded_once) {
            this.has_loaded_once = true;
            this._loading$.next(true);
        }
        const options = this.pagination_query_manager.options;
        // console.log(options);
        this.loadItemsFromServer(options)
            .pipe(catchError(() => of([])),
                finalize(() => this._loading$.next(false)))
            .subscribe((items: I[]) => {
            this._num_items$.next(items.length);
            if (items.length === 0 && this.items$.getValue().length) {
                if (options.search_filter !== this.last_searched_filter) {
                    this.items$.next(items);
                } else {
                    this._reachedLastPage$.next(true);
                }
            } else {
                this._reachedLastPage$.next(false);
                this.items$.next(items);
                this.loaded_items$.next(items);
            }
            this.last_searched_filter = options.search_filter;
        }, (err) => {
            this.showError(err, options.retrieval_error_message || `Failed to retrieve data!`, true);
        });
    }

    protected abstract deleteItemFromServer(deleted_item: I): Observable<any>;

    deleteItem(deleted_item: I): void {
        const options = this.pagination_query_manager.options;
        const unique_id = deleted_item[`sort_id`] ? `sort_id` : `id`;
        this.deleteItemFromServer(deleted_item)
        .subscribe(() => {
          this.snackbar_service.openSnackBar(options.deletion_success_message);
          this.items$.next(this.items$.getValue()
            .filter((item: I) => item[unique_id] !== deleted_item[unique_id]));
        }, (err) => {
          this.showError(err, options.deletion_error_message, true);
        });
    }

    // Adds item to table without querying the server
    addItem(new_item: I): void {
        const order_by_col = this.pagination_query_manager.options.order_by_col;
        const order_direction = this.pagination_query_manager.options.order_direction;
        const new_list = [new_item].concat(this.items$.getValue());
        new_list.sort((a: I, b: I) => {
            if (order_direction === OrderDirection.ASC && a[order_by_col] < b[order_by_col]
                || order_direction === OrderDirection.DESC && a[order_by_col] > b[order_by_col]) {
                    return -1;
            } else {
                return 1;
            }
        });
        this.items$.next(new_list);
    }

    filterItems(search_filter: string): void {
        this.updateQueryManager({
            cursor_point: this.pagination_query_manager.options.order_direction === OrderDirection.ASC
                ? MIN_STRING : MAX_STRING,
            search_filter: `'${search_filter}'`
        });
        this.loadItems();
    }

    setPerPage(per_page: number) {
        this.updateQueryManager({
            per_page: per_page
        }, true, PageOperation.SIZE_CHANGE);
        this.loadItems();
    }

    setSort(s: Sort, order_by_col_type: ColumnSortType = ColumnSortType.TEXT) {
        let min_cursor: any = MIN_STRING;
        let max_cursor: any = MAX_STRING;
        if (order_by_col_type === ColumnSortType.INT || order_by_col_type === ColumnSortType.FLOAT) {
            min_cursor = MIN_INT;
            max_cursor = MAX_INT;
        } else if ((order_by_col_type === ColumnSortType.DATE) || (order_by_col_type === ColumnSortType.TIMESTAMP)) {
            min_cursor = MIN_DATE;
            max_cursor = MAX_DATE;
        }
        this.updateQueryManager({
            order_direction: s.direction === 'asc' ? OrderDirection.ASC : OrderDirection.DESC,
            order_by_col: s.active,
            order_by_col_type,
            cursor_point: s.direction === `asc` ? min_cursor : max_cursor
          }, true, PageOperation.NONE);
          this.loadItems();
    }

    turnPage(flip_is_forward: boolean) {
        this.updateQueryManager({}, true, flip_is_forward ? PageOperation.FORWARD : PageOperation.BACKWARD);
        this.loadItems();
    }

    protected showError(err: Error, msg: string, customError: boolean = false): void {
        const errMsg = customError ? msg : `Failed to retrieve your data`;
        this.error_service.openErrorDialog({
          message: errMsg,
          name: err.name,
          stack: err.stack
        });
    }

    protected updateQueryManager(opts: any, should_update_cursor: boolean = false, page_op: PageOperation = PageOperation.NONE) {
        Object.assign(this.pagination_query_manager.options, opts);
        if (should_update_cursor) {
            this.pagination_query_manager.setNextCursor(this.loaded_items$.getValue(), page_op);
            // Use loaded_items$ for setting the cursor since we can't plan for what the user may have added/deleted from the current page
        }
    }

}
