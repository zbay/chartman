import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator, MatSort, MatSortable, MatTableDataSource } from '@angular/material';

import { finalize, takeUntil } from 'rxjs/operators';

import { ErrorService } from '@app/services/error/error.service';
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
  dataSource = new MatTableDataSource([]);
  readonly displayedColumns = ['symbol', 'name', 'delete'];
  isLoading = true;
  stocks: Stock[] = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly errorService: ErrorService,
              private readonly snackbarService: SnackBarService,
              private readonly stockService: StockService) {
    super();
  }

  ngOnInit() {
    // table is sorted ascending by symbol, to start
    this.sort.sort(<MatSortable>{
        id: 'symbol',
        start: 'asc'
      }
    );

    this.stockService.getMyStocks()
      .pipe(
        takeUntil(this.destroy$),
        finalize(() => this.isLoading = false))
      .subscribe((stocks: Stock[]) => {
        this.stocks = stocks;
        this.updateTable();
       },
       (err) => {
            this.showError(err, 'Failed to retrieve your data');
       });


    this.stockService.new_stock$.pipe(takeUntil(this.destroy$))
      .subscribe((stock: Stock) => {
        this.stocks.unshift(stock);
        this.updateTable();
      });
  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  deleteStock(deletedStock: Stock): void {
    this.stockService.deleteStock(deletedStock.id)
      .subscribe(() => {
        this.stocks = this.stocks.filter((stock) => stock.id !== deletedStock.id);
        this.snackbarService.openSnackBar(`Tracker for ${deletedStock.symbol} deleted!`);
        this.updateTable();
      }, (err) => {
        this.showError(err, `Failed to delete tracker for ${deletedStock.symbol}`, true);
      });
  }

  showError(err: Error, msg: string, customError: boolean = false): void {
    const errMsg = customError ? msg : `Failed to retrieve your data`;
    this.errorService.openErrorDialog({
      message: errMsg,
      name: err.name,
      stack: err.stack
    });
  }

  trackByFn(index: number, item: Stock) {
    return item.symbol;
  }

  updateTable() {
    this.dataSource = new MatTableDataSource(this.stocks);
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }

}
