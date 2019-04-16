import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MatSort, MatSortable, Sort } from '@angular/material';

import { debounceTime } from 'rxjs/operators';
import { Observable } from 'rxjs';

import { AccountService } from '@app/modules/account/services/account-service';
import { ErrorService } from '@app/services/error/error.service';
import { IndexlessPaginatorComponent } from '@shared/components/indexless-paginator/indexless-paginator.component';
import { PerPageOption } from '@shared/interfaces/per-page-option.interface';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { SubscribingComponent } from '@shared/components/subscribing/subscribing.component';
import { UserForAdmin } from '@common/interfaces/user-for-admin.interface';
import { UserDataSource } from '@admin/user-list//user-data-source.class';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.scss']
})
export class UserListComponent  extends SubscribingComponent implements OnInit {
  data_source: UserDataSource;
  readonly displayed_columns = ['name', 'email', 'roles', 'last_login', 'delete'];
  readonly sortable_column_types = {
    name: `text`,
    email: `text`,
    last_login: `date`
  };
  readonly filter_group: FormGroup = new FormBuilder().group({
    user_input: ['']
  });
  loading$: Observable<boolean>;
  users: UserForAdmin[] = [];
  num_users$: Observable<number>;
  per_page_options: PerPageOption[] = [
    { value: 10, view_value: '10'},
    { value: 25, view_value: '25'},
    { value: 100, view_value: `100`},
    { value: 99999, view_value: `All`}
  ];

  @ViewChild(IndexlessPaginatorComponent) paginator: IndexlessPaginatorComponent;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly error_service: ErrorService,
    private readonly snackbar_service: SnackBarService,
    private readonly account_service: AccountService) {
    super();
    this.data_source = new UserDataSource(this.error_service, this.snackbar_service, this.account_service);
    this.loading$ = this.data_source.loading$;
    this.num_users$ = this.data_source.num_items$;
  }

  ngOnInit() {
        // table is sorted ascending by codes, to start
        this.sort.sort(<MatSortable>{
          id: 'name',
          start: 'asc'
        }
      );

      this.sort.sortChange.subscribe((s: Sort) => {
        this.data_source.setSort(s, this.sortable_column_types[s.active]);
      });

      this.paginator.page_change.subscribe((flip_is_forward: boolean) => {
        this.data_source.turnPage(flip_is_forward);
      });

      this.paginator.per_page.subscribe((per_page: number) => {
        this.data_source.setPerPage(per_page);
      });

      this.data_source.loadItems();

      this.filter_group.get(`user_input`)
        .valueChanges
        .pipe(debounceTime(300))
        .subscribe((value: string) => {
          this.data_source.filterItems(value);
        });
  }

  deleteUser(deleted_user: UserForAdmin): void {
    this.data_source.deleteItem(deleted_user);
  }

  trackByFn(index: number, item: UserForAdmin) {
    return item.id;
  }
}
