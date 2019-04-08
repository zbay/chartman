import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { MatSort, MatSortable, Sort } from '@angular/material';

import { Observable } from 'rxjs';
import { takeUntil, debounceTime } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { IndexlessPaginatorComponent } from '@app/modules/shared/components/indexless-paginator/indexless-paginator.component';
import { MyStockDataSource } from './my-stock-data-source.class';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { PageOperation } from '../../enums/page-operation.enum';
import { PerPageOption } from '@app/modules/shared/interfaces/per-page-option.interface';

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
  per_page_options: PerPageOption[] = [
    { value: 10, view_value: '10'},
    { value: 25, view_value: '25'},
    { value: 100, view_value: `100`},
    { value: 99999, view_value: `Any`}
  ];

  @ViewChild(IndexlessPaginatorComponent) paginator: IndexlessPaginatorComponent;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly error_service: ErrorService,
              private readonly snackbar_service: SnackBarService,
              private readonly stock_service: StockService) {
    super();
    this.data_source = new MyStockDataSource(this.error_service, this.snackbar_service, this.stock_service);
    this.loading$ = this.data_source.loading$;
    this.num_stocks$ = this.data_source.num_stocks$;
  }

  ngOnInit() {
    // table is sorted ascending by symbol, to start
    this.sort.sort(<MatSortable>{
        id: 'symbol',
        start: 'asc'
      }
    );

    this.sort.sortChange.subscribe((s: Sort) => {
       this.data_source.updateQueryManager({
         order_direction: s.direction === 'asc' ? OrderDirection.ASC : OrderDirection.DESC,
         order_by_col: s.active,
         cursor_point: s.direction === `asc` ? `0` : `zzzzzzzzzzzzzzzzzzzz`
       }, PageOperation.NONE);
       this.data_source.loadStocks();
    });

    this.paginator.page_change.subscribe((flip_forward: boolean) => {
      this.data_source.updateQueryManager({}, flip_forward ? PageOperation.FORWARD : PageOperation.BACKWARD);
      this.data_source.loadStocks();
    });

    this.paginator.per_page.subscribe((per_page: number) => {
      this.data_source.updateQueryManager({
        per_page: per_page
      }, PageOperation.SIZE_CHANGE);
      this.data_source.loadStocks();
    });

    this.data_source.loadStocks();

    this.stock_service.new_stock$.pipe(takeUntil(this.destroy$))
      .subscribe((stock: Stock) => {
        this.data_source.addStock(stock);
      });

    this.filter_group.get(`user_input`)
      .valueChanges
      .pipe(debounceTime(300))
      .subscribe((value: string) => {
        this.data_source.filterStocks(value);
      });
  }

  applyFilter(filter_value: string) {
    this.data_source.filterStocks(filter_value);
  }

  deleteStock(deleted_stock: Stock): void {
    this.data_source.deleteStock(deleted_stock);
  }

  trackByFn(index: number, item: Stock) {
    return item.symbol;
  }

}
