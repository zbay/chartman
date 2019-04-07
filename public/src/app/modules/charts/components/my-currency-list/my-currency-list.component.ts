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
  data_source = new MatTableDataSource([]);
  displayed_columns = ['sort_id', 'names', 'delete'];
  isLoading = true;
  currency_pairs: CurrencyPair[] = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private readonly error_service: ErrorService,
    private readonly snackbar_service: SnackBarService,
    private readonly currency_service: CurrencyService) {
    super();
  }

  ngOnInit() {
        // table is sorted ascending by codes, to start
        this.sort.sort(<MatSortable>{
          id: 'sort_id',
          start: 'asc'
        }
      );

      this.currency_service.getMyCurrencyPairs()
      .pipe(
        takeUntil(this.destroy$),
        finalize(() => this.isLoading = false))
      .subscribe((currency_pairs: CurrencyPair[]) => {
        this.currency_pairs = currency_pairs;
        this.updateTable();
       },
       (err) => {
            this.showError(err, 'Failed to retrieve your data');
       });


    this.currency_service.new_currency_pair$.pipe(takeUntil(this.destroy$))
      .subscribe((currency_pair: CurrencyPair) => {
        this.currency_pairs.unshift(currency_pair);
        this.updateTable();
      });
  }

  applyFilter(filterValue: string) {
    this.data_source.filter = filterValue.trim().toLowerCase();
  }

  deleteCurrencyPair(deleted_currency_pair: CurrencyPair): void {
    this.currency_service.deleteCurrencyPair(deleted_currency_pair.from.id, deleted_currency_pair.to.id)
      .subscribe(() => {
        this.currency_pairs = this.currency_pairs
          .filter((currency_pair) => {
            return (currency_pair.from.id !== deleted_currency_pair.from.id)
              || (currency_pair.to.id !== deleted_currency_pair.to.id);
          });
        this.snackbar_service.openSnackBar(`Currency pair deleted!`);
        this.updateTable();
      }, (err) => {
        this.showError(err, `Failed to delete currency pair!`, true);
      });
  }

  showError(err: Error, msg: string, customError: boolean = false): void {
    const errMsg = customError ? msg : `Failed to retrieve your currency pairs!`;
    this.error_service.openErrorDialog({
      message: errMsg,
      name: err.name,
      stack: err.stack
    });
  }

  trackByFn(index: number, item: CurrencyPair) {
    return `${item.from.id} -- ${item.to.id}`;
  }

  updateTable() {
    this.data_source = new MatTableDataSource(this.currency_pairs);
    this.data_source.sort = this.sort;
    this.data_source.paginator = this.paginator;
  }

}
