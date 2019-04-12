import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { debounceTime, switchMap, tap, filter } from 'rxjs/operators';
import { Observable, combineLatest } from 'rxjs';

import { Currency } from '@charts/models/currency';
import { CurrencyPair } from '@charts/models/currency-pair';
import { CurrencyService } from '@charts/services/currency/currency.service';
import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

@Component({
  selector: 'app-new-currency-pair-tracker',
  templateUrl: './new-currency-pair-tracker.component.html',
  styleUrls: ['./new-currency-pair-tracker.component.scss']
})
export class NewCurrencyPairTrackerComponent implements OnInit {
  form_builder = new FormBuilder();
  currency_group_1 = NewCurrencyPairTrackerComponent.makeCurrencyFormGroup();
  currency_group_2 = NewCurrencyPairTrackerComponent.makeCurrencyFormGroup();
  search_filter_group = this.form_builder.group({
      search_filter: ['Fiat,Crypto']
  });
  filtered_currencies_1$: Observable<Currency[]>;
  filtered_currencies_2$: Observable<Currency[]>;

  new_currency_pair: CurrencyPair = { from: null, to: null, sort_id: null };

  static makeCurrencyFormGroup(): FormGroup {
    const fb = new FormBuilder();
    return fb.group({
      user_input: ['', [Validators.required]]
    });
  }

  constructor(private readonly currency_service: CurrencyService,
              private readonly error_service: ErrorService,
              private readonly snackbar_service: SnackBarService) { }

  ngOnInit() {
    this.filtered_currencies_1$ = this.listenForCurrencies(this.currency_group_1);
    this.filtered_currencies_2$ = this.listenForCurrencies(this.currency_group_2);
  }

  listenForCurrencies(currencyGroup: FormGroup): Observable<Currency[]> {
     // text input change waits 0.3 sec, while the crypto checkbox takes effect immediately
     return combineLatest(
      currencyGroup.get('user_input').valueChanges
        .pipe(
          filter((val) => typeof val === 'string'),
          tap(() => {
            this.search_filter_group.setValue({search_filter: this.search_filter_group.getRawValue().search_filter});
          }),
          debounceTime(300)
        ),
      this.search_filter_group.get('search_filter').valueChanges
    )
    .pipe(switchMap((vals: string[]) => {
      const user_input = vals[0];
      const search_filter = vals[1];
      return this.currency_service.getCurrenciesForAutoComplete(user_input, search_filter);
    }),
    this.error_service.standardSubscriptionErrorHandler([]));
  }

  saveNewCurrencyPair(): void {
    if (this.new_currency_pair.from && this.new_currency_pair.to) {
      this.currency_service.addCurrencyPair(this.new_currency_pair)
      .subscribe(() => {
        this.snackbar_service.openSnackBar(`New currency pair tracker saved!`);
        this.currency_service.emitLatestCurrencyPair(this.new_currency_pair);
        this.currency_group_1.reset();
        this.currency_group_2.reset();
        this.new_currency_pair = { from: null, to: null, sort_id: null };
    }, (res) => {
      this.error_service.openErrorDialog(res.error);
    });
    }
  }

  displayFn(currency: Currency): string {
    if (currency) { return `${currency.code} -- ${currency.name}`; }
  }

  setNewCurrency(currency: Currency, idx: number): void {
    if (idx > 0) {
      this.new_currency_pair.to = currency;
    } else {
      this.new_currency_pair.from = currency;
    }
    if (this.new_currency_pair.from && this.new_currency_pair.to) {
      this.new_currency_pair.sort_id = `${this.new_currency_pair.from.code} / ${this.new_currency_pair.to.code}`;
      this.new_currency_pair.names = `${this.new_currency_pair.from.name} / ${this.new_currency_pair.to.name}`;
    }
  }

}
