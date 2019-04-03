import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator, MatSort, MatSortable, Sort, PageEvent } from '@angular/material';

import { finalize, takeUntil } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { OrderDirection } from '@app/common/enums/order-direction.enum';
import { MyStockDataSource } from './my-stock-data-source.class';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-my-stock-list',
  templateUrl: './my-stock-list.component.html',
  styleUrls: ['./my-stock-list.component.scss']
})
export class MyStockListComponent extends SubscribingComponent implements OnInit {
  dataSource: MyStockDataSource;
  readonly displayedColumns = ['symbol', 'name', 'delete'];
  loading$: Observable<boolean>;

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly errorService: ErrorService,
              private readonly snackbarService: SnackBarService,
              private readonly stockService: StockService) {
    super();
    this.dataSource = new MyStockDataSource(this.errorService, this.snackbarService, this.stockService);
    this.loading$ = this.dataSource.loading$;
  }

  ngOnInit() {
    // table is sorted ascending by symbol, to start
    this.sort.sort(<MatSortable>{
        id: 'symbol',
        start: 'asc'
      }
    );

    this.sort.sortChange.subscribe((s: Sort) => {
       // Change order_by_col, order_by_col_type, and order_direction
       this.dataSource.updateQueryManager({
         order_direction: s.direction === 'asc' ? OrderDirection.ASC : OrderDirection.DESC,
         order_by_col: s.active
       });
       this.dataSource.loadStocks();
    });

    this.paginator.page.subscribe((event: PageEvent) => {
      this.dataSource.updateQueryManager({
        per_page: event.pageSize
      }, true);
      this.dataSource.loadStocks();
    });

    this.dataSource.loadStocks();

    this.stockService.new_stock$.pipe(takeUntil(this.destroy$))
      .subscribe((stock: Stock) => {
        this.dataSource.addStock(stock);
      });
  }

  applyFilter(filterValue: string) {
    this.dataSource.filterStocks(filterValue.trim().toLowerCase());
  }

  deleteStock(deletedStock: Stock): void {
    this.dataSource.deleteStock(deletedStock);
  }

  trackByFn(index: number, item: Stock) {
    return item.symbol;
  }

}
