import { DataSource } from '@angular/cdk/table';

import { Observable } from 'rxjs';

import { CurrencyPair } from '@charts/models/currency-pair';
import { CurrencyService } from '@charts/services/currency/currency.service';
import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { SearchablePaginationOptions } from '@common/interfaces/searchable-pagination-options.enum';
import { ServerSideDataSource } from '@app/common/classes/server-side-data-source.class';

export class MyCurrencyPairDataSource
    extends ServerSideDataSource<CurrencyPair, SearchablePaginationOptions>
    implements DataSource<CurrencyPair> {

    constructor(protected readonly error_service: ErrorService,
                protected readonly snackbar_service: SnackBarService,
                protected readonly currency_service: CurrencyService) {
        super(error_service, snackbar_service);
        this.pagination_query_manager = new PaginationQueryManager<SearchablePaginationOptions>({
            cursor_point: `''`,
            order_by_col: `sort_id`,
            order_by_col_type: `text`,
            order_direction: OrderDirection.ASC,
            per_page: 10,
            search_filter: `''`,
            retrieval_error_message: `Failed to load currency trackers!`,
            deletion_error_message: `Failed to delete currency pair!`,
            deletion_success_message: `Currency pair deleted!`
          });
        this._new_item$ = this.currency_service.new_currency_pair$;
    }

    protected deleteItemFromServer(deleted_currency_pair: CurrencyPair): Observable<any> {
        return this.currency_service.deleteCurrencyPair(deleted_currency_pair.from.id, deleted_currency_pair.to.id);
    }

    protected loadItemsFromServer(options: SearchablePaginationOptions): Observable<CurrencyPair[]> {
        return this.currency_service.getMyCurrencyPairs(options);
    }

}
