import { DataSource } from '@angular/cdk/table';

import { Observable } from 'rxjs';

import { ColumnSortType } from '@app/common/enums/column-sort-type.enum';
import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SearchablePaginationOptions } from '@app/common/interfaces/searchable-pagination-options.enum';
import { ServerSideDataSource } from '@common/classes/server-side-data-source.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';

export class MyStockDataSource extends ServerSideDataSource<Stock, SearchablePaginationOptions> implements DataSource<Stock> {

    constructor(protected readonly error_service: ErrorService,
                protected readonly snackbar_service: SnackBarService,
                private readonly stock_service: StockService) {
        super(error_service, snackbar_service);
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `0`,
            order_by_col: `symbol`,
            order_by_col_type: ColumnSortType.TEXT,
            order_direction: OrderDirection.ASC,
            per_page: 10,
            search_filter: `''`,
            retrieval_error_message: `Could not retrieve your stocks!`
          });
        this._new_item$ = this.stock_service.new_stock$;
    }

    protected loadItemsFromServer(options: SearchablePaginationOptions): Observable<Stock[]> {
        return this.stock_service.getMyStocks(options);
    }

    protected deleteItemFromServer(deleted_stock: Stock): Observable<any> {
        this.updateQueryManager({
            deletion_success_message: `Tracker for ${deleted_stock.symbol} deleted!`,
            deletion_error_message: `Failed to delete tracker for ${deleted_stock.symbol}`
        });
        return this.stock_service.deleteStock(deleted_stock.id);
    }

}
