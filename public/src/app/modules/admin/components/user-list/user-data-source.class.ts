import { DataSource } from '@angular/cdk/table';

import { Observable } from 'rxjs';

import { AccountService } from '@app/modules/account/services/account-service';
import { ColumnSortType } from '@app/common/enums/column-sort-type.enum';
import { ErrorService } from '@app/services/error/error.service';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { PaginationQueryManager } from '@app/common/classes/pagination-query-manager.class';
import { PatchableServerSideDataSource } from '@app/common/classes/patchable-server-side-data-source.class';
import { SearchablePaginationOptions } from '@app/common/interfaces/searchable-pagination-options.enum';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { UserForAdmin } from '@app/common/interfaces/user-for-admin.interface';

// tslint:disable-next-line:max-line-length
export class UserDataSource extends PatchableServerSideDataSource<UserForAdmin, SearchablePaginationOptions> implements DataSource<UserForAdmin> {

    constructor(protected readonly error_service: ErrorService,
                protected readonly snackbar_service: SnackBarService,
                private readonly account_service: AccountService) {
        super(error_service, snackbar_service);
        this.pagination_query_manager = new PaginationQueryManager({
            cursor_point: `0`,
            order_by_col: `name`,
            order_by_col_type: ColumnSortType.TEXT,
            order_direction: OrderDirection.ASC,
            per_page: 10,
            search_filter: `''`,
            retrieval_error_message: `Could not retrieve users!`
          });
    }

    protected loadItemsFromServer(options: SearchablePaginationOptions): Observable<UserForAdmin[]> {
        return this.account_service.getAllUsers(options);
    }

    protected deleteItemFromServer(deleted_user: UserForAdmin): Observable<any> {
        this.updateQueryManager({
            deletion_success_message: `User: ${deleted_user.email} deleted!`,
            deletion_error_message: `Failed to delete user: ${deleted_user.email}`
        });
        return this.account_service.deleteUser(deleted_user.id);
    }

    protected patchItemOnServer(patched_user: UserForAdmin): Observable<any> {
        return this.account_service.patchUserAsAdmin(patched_user);
    }

    // tslint:disable-next-line:max-line-length
    protected patchItemInBrowser(patched_user: UserForAdmin): (value: UserForAdmin, index?: number, array?: UserForAdmin[]) => UserForAdmin {
        return (item: UserForAdmin): UserForAdmin => {
            if (item.id === patched_user.id) {
                item.first_name = patched_user.first_name;
                item.last_name = patched_user.last_name;
                item.name = `${item.last_name}, ${item.first_name}`;
                item.email = patched_user.email;
                item.roles = patched_user.roles;
              }
              return item;
        };
    }

}
