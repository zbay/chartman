import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { MatSort, MatSortable, Sort } from '@angular/material';

import { debounceTime } from 'rxjs/operators';
import { Observable } from 'rxjs';

import { CurrencyPair } from '@charts/models/currency-pair';
import { CurrencyService } from '../../services/currency/currency.service';
import { ErrorService } from '@app/services/error/error.service';
import { IndexlessPaginatorComponent } from '@app/modules/shared/components/indexless-paginator/indexless-paginator.component';
import { MyCurrencyPairDataSource } from './my-currency-pair-data-source.class';
import { PerPageOption } from '@app/modules/shared/interfaces/per-page-option.interface';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-my-currency-list',
  templateUrl: './my-currency-list.component.html',
  styleUrls: ['./my-currency-list.component.scss']
})
export class MyCurrencyListComponent extends SubscribingComponent implements OnInit {
  data_source: MyCurrencyPairDataSource;
  displayed_columns = ['sort_id', 'names', 'delete'];
  readonly filter_group: FormGroup = new FormBuilder().group({
    user_input: ['']
  });
  loading$: Observable<boolean>;
  currency_pairs: CurrencyPair[] = [];
  num_currency_pairs$: Observable<number>;
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
    private readonly currency_service: CurrencyService) {
    super();
    this.data_source = new MyCurrencyPairDataSource(this.error_service, this.snackbar_service, this.currency_service);
    this.loading$ = this.data_source.loading$;
    this.num_currency_pairs$ = this.data_source.num_currency_pairs$;
  }

  ngOnInit() {
        // table is sorted ascending by codes, to start
        this.sort.sort(<MatSortable>{
          id: 'sort_id',
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

      this.data_source.loadCurrencyPairs();

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

  deleteCurrencyPair(deleted_currency_pair: CurrencyPair): void {
    this.data_source.deleteCurrencyPair(deleted_currency_pair);
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

}
