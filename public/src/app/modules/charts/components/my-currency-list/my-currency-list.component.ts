import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource, MatPaginator, MatSort, MatSortable } from '@angular/material';

import { takeUntil, finalize } from 'rxjs/operators';

import { CurrencyPair } from '@charts/models/currency-pair';
import { CurrencyService } from '../../services/currency/currency.service';
import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-my-currency-list',
  templateUrl: './my-currency-list.component.html',
  styleUrls: ['./my-currency-list.component.scss']
})
export class MyCurrencyListComponent extends SubscribingComponent implements OnInit {
  dataSource = new MatTableDataSource([]);
  displayedColumns = ['sortID', 'names', 'delete'];
  isLoading = true;
  currencyPairs: CurrencyPair[] = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly errorService: ErrorService,
    private readonly snackbarService: SnackBarService,
    private readonly currencyService: CurrencyService) {
    super();
  }

  ngOnInit() {
        // table is sorted ascending by codes, to start
        this.sort.sort(<MatSortable>{
          id: 'sortID',
          start: 'asc'
        }
      );

      this.currencyService.getMyCurrencyPairs()
      .pipe(
        takeUntil(this.destroy$),
        finalize(() => this.isLoading = false))
      .subscribe((currencyPairs: CurrencyPair[]) => {
        this.currencyPairs = currencyPairs;
        this.updateTable();
       },
       (err) => {
            this.showError(err, 'Failed to retrieve your data');
       });


    this.currencyService.newCurrencyPair$.pipe(takeUntil(this.destroy$))
      .subscribe((currencyPair: CurrencyPair) => {
        this.currencyPairs.unshift(currencyPair);
        this.updateTable();
      });
  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  deleteCurrencyPair(deletedCurrencyPair: CurrencyPair): void {
    this.currencyService.deleteCurrencyPair(deletedCurrencyPair.from.id, deletedCurrencyPair.to.id)
      .subscribe(() => {
        this.currencyPairs = this.currencyPairs
          .filter((currencyPair) => {
            return (currencyPair.from.id !== deletedCurrencyPair.from.id)
              || (currencyPair.to.id !== deletedCurrencyPair.to.id);
          });
        this.snackbarService.openSnackBar(`Currency pair deleted!`);
        this.updateTable();
      }, (err) => {
        this.showError(err, `Failed to delete currency pair!`, true);
      });
  }

  showError(err: Error, msg: string, customError: boolean = false): void {
    const errMsg = customError ? msg : `Failed to retrieve your currency pairs!`;
    this.errorService.openErrorDialog({
      message: errMsg,
      name: err.name,
      stack: err.stack
    });
  }

  trackByFn(index: number, item: CurrencyPair) {
    return `${item.from.id} -- ${item.to.id}`;
  }

  updateTable() {
    this.dataSource = new MatTableDataSource(this.currencyPairs);
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }

}
