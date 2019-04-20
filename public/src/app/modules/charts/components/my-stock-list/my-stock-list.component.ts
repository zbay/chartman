import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { MatSort, MatSortable, Sort } from '@angular/material';

import { Observable } from 'rxjs';
import { debounceTime } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { IndexlessPaginatorComponent } from '@app/modules/shared/components/indexless-paginator/indexless-paginator.component';
import { MyStockDataSource } from './my-stock-data-source.class';
import { SelectOption } from '@app/modules/shared/interfaces/select-option.interface';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

// TODO: support multi-column sort for this and all similar components
// This is not possible with MatSort. Make a new directive that can do it
@Component({
  selector: 'app-my-stock-list',
  templateUrl: './my-stock-list.component.html',
  styleUrls: ['./my-stock-list.component.scss']
})
export class MyStockListComponent extends SubscribingComponent implements OnInit {
  data_source: MyStockDataSource;
  readonly displayed_columns = ['symbol', 'name', 'delete'];
  readonly filter_group: FormGroup = new FormBuilder().group({
    user_input: ['']
  });
  loading$: Observable<boolean>;
  num_stocks$: Observable<number>;
  per_page_options: SelectOption[] = [
    { value: 10, view_value: '10'},
    { value: 25, view_value: '25'},
    { value: 100, view_value: `100`},
    { value: 99999, view_value: `All`}
  ];

  @ViewChild(IndexlessPaginatorComponent) paginator: IndexlessPaginatorComponent;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly error_service: ErrorService,
              private readonly snackbar_service: SnackBarService,
              private readonly stock_service: StockService) {
    super();
    this.data_source = new MyStockDataSource(this.error_service, this.snackbar_service, this.stock_service);
    this.loading$ = this.data_source.loading$;
    this.num_stocks$ = this.data_source.num_items$;
  }

  ngOnInit() {
    // table is sorted ascending by symbol, to start
    this.sort.sort(<MatSortable>{
        id: 'symbol',
        start: 'asc'
      }
    );

    this.sort.sortChange.subscribe((s: Sort) => {
      this.data_source.setSort(s);
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

  deleteStock(deleted_stock: Stock): void {
    this.data_source.deleteItem(deleted_stock);
  }

  trackByFn(index: number, item: Stock) {
    return item.symbol;
  }

}
