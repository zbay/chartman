import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MatSort, MatSortable, Sort, MatDialogRef } from '@angular/material';

import { debounceTime, takeUntil } from 'rxjs/operators';
import { Observable } from 'rxjs';

import { AccountService } from '@app/modules/account/services/account-service';
import { ColumnSortType } from '@app/common/enums/column-sort-type.enum';
import { EditorService } from '@app/services/editor/editor.service';
import { ErrorService } from '@app/services/error/error.service';
import { IndexlessPaginatorComponent } from '@shared/components/indexless-paginator/indexless-paginator.component';
import { SelectOption } from '@app/modules/shared/interfaces/select-option.interface';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { SubscribingComponent } from '@shared/components/subscribing/subscribing.component';
import { UserDataSource } from '@admin/components/user-list//user-data-source.class';
import { UserEditorComponent } from '@shared/components/user-editor/user-editor.component';
import { UserForAdmin } from '@common/interfaces/user-for-admin.interface';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.scss']
})
export class UserListComponent extends SubscribingComponent implements OnInit {
  data_source: UserDataSource;
  readonly displayed_columns = ['name', 'email', 'roles', 'last_login'];
  readonly sortable_column_types = {
    name: ColumnSortType.TEXT,
    email: ColumnSortType.TEXT,
    last_login: ColumnSortType.DATE
  };
  readonly filter_group: FormGroup = new FormBuilder().group({
    user_input: ['']
  });
  loading$: Observable<boolean>;
  users: UserForAdmin[] = [];
  num_users$: Observable<number>;
  per_page_options: SelectOption[] = [
    { value: 10, view_value: '10'},
    { value: 25, view_value: '25'},
    { value: 100, view_value: `100`},
    { value: 99999, view_value: `All`}
  ];

  dialog: MatDialogRef<UserEditorComponent, { user: UserForAdmin }>;
  @ViewChild(IndexlessPaginatorComponent) paginator: IndexlessPaginatorComponent;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly account_service: AccountService,
    private readonly editor_service: EditorService,
    private readonly error_service: ErrorService,
    private readonly snackbar_service: SnackBarService) {
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

      this.sort.sortChange.pipe(takeUntil(this.destroy$)).subscribe((s: Sort) => {
        this.data_source.setSort(s, this.sortable_column_types[s.active]);
      });

      this.paginator.page_change.pipe(takeUntil(this.destroy$)).subscribe((flip_is_forward: boolean) => {
        this.data_source.turnPage(flip_is_forward);
      });

      this.paginator.per_page.pipe(takeUntil(this.destroy$)).subscribe((per_page: number) => {
        this.data_source.setPerPage(per_page);
      });

      this.data_source.loadItems();

      this.filter_group.get(`user_input`)
        .valueChanges
        .pipe(takeUntil(this.destroy$), debounceTime(300))
        .subscribe((value: string) => {
          this.data_source.filterItems(value);
        });
  }

  deleteUser(deleted_user: UserForAdmin): void {
    this.data_source.deleteItem(deleted_user);
  }

  patchUser(patched_user: UserForAdmin): void {
    this.data_source.patchItem(patched_user);
  }

  openUserModal(user: UserForAdmin) {
    this.dialog = this.editor_service.openEditor(UserEditorComponent, { user });
    this.dialog.afterClosed().subscribe((data: any) => {
      console.log(data);
      if (data.deleted) {
        this.deleteUser(data.deleted);
      } else if (data.edited) {
        this.patchUser(data.edited);
      }
    });
  }

  trackByFn(index: number, item: UserForAdmin) {
    return item.id;
  }
}
