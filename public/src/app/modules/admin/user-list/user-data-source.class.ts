import { DataSource } from '@angular/cdk/table';

import { Observable, of } from 'rxjs';

import { AccountService } from '@app/modules/account/services/account-service';
import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { ServerSideDataSource } from '@app/common/classes/server-side-data-source.class';
import { UserForAdmin } from '@app/common/interfaces/user-for-admin.interface';
import { SearchablePaginationOptions } from '@app/common/interfaces/searchable-pagination-options.enum';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

export class UserDataSource extends ServerSideDataSource<UserForAdmin, SearchablePaginationOptions> implements DataSource<UserForAdmin> {

    constructor(protected readonly error_service: ErrorService,
                protected readonly snackbar_service: SnackBarService,
                private readonly account_service: AccountService) {
        super(error_service, snackbar_service);
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `0`,
            order_by_col: `name`,
            order_by_col_type: `text`,
            order_direction: OrderDirection.ASC,
            per_page: 10,
            search_filter: `''`,
            retrieval_error_message: `Could not retrieve users!`
          });
    }

    protected loadItemsFromServer(options: SearchablePaginationOptions): Observable<UserForAdmin[]> {
        return this.account_service.getAllUsers(options);
    }

    // TODO
    protected deleteItemFromServer(deleted_user: UserForAdmin): Observable<any> {
        // this.updateQueryManager({
        //     deletion_success_message: `Tracker for ${deleted_stock.symbol} deleted!`,
        //     deletion_error_message: `Failed to delete tracker for ${deleted_stock.symbol}`
        // });
        // return this.stock_service.deleteStock(deleted_stock.id);
        return of([]);
    }

}
