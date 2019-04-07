import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { MatPaginator, MatSort, MatSortable, Sort, PageEvent } from '@angular/material';

import { Observable } from 'rxjs';
import { takeUntil, debounceTime } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { MyStockDataSource } from './my-stock-data-source.class';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

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
  page_num = 0;
  // @ViewChild(MatPaginator) paginator: MatPaginator;
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
         cursor_point: s.direction === `asc` ? `0` : `ZZZZZZZZZZZZZZZZZZZZZZZ`
       });
       this.data_source.loadStocks();
    });

    // this.paginator.page.subscribe((event: PageEvent) => {
    //   const go_to_next_page = this.page_num !== event.pageIndex;
    //   this.data_source.updateQueryManager({
    //     per_page: event.pageSize
    //   }, go_to_next_page);
    //   this.data_source.loadStocks();
    //   this.page_num = event.pageIndex;
    // });

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
