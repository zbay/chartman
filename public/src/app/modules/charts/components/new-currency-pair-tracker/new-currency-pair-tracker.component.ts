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
  formBuilder = new FormBuilder();
  currencyGroup1 = NewCurrencyPairTrackerComponent.makeCurrencyFormGroup();
  currencyGroup2 = NewCurrencyPairTrackerComponent.makeCurrencyFormGroup();
  searchFilterGroup = this.formBuilder.group({
      searchFilter: ['Fiat,Crypto']
  });
  filteredCurrencies1$: Observable<Currency[]>;
  filteredCurrencies2$: Observable<Currency[]>;

  newCurrencyPair: CurrencyPair = { from: null, to: null, sortID: null };

  static makeCurrencyFormGroup(): FormGroup {
    const fb = new FormBuilder();
    return fb.group({
      userInput: ['', [Validators.required]]
    });
  }

  constructor(private readonly currencyService: CurrencyService,
              private readonly errorService: ErrorService,
              private readonly snackbarService: SnackBarService) { }

  ngOnInit() {
    this.filteredCurrencies1$ = this.listenForCurrencies(this.currencyGroup1);
    this.filteredCurrencies2$ = this.listenForCurrencies(this.currencyGroup2);
  }

  listenForCurrencies(currencyGroup: FormGroup): Observable<Currency[]> {
     // text input change waits 0.3 sec, while the crypto checkbox takes effect immediately
     return combineLatest(
      currencyGroup.get('userInput').valueChanges
        .pipe<string, string, string>(
          filter((val) => typeof val === 'string'),
          tap(() => {
            this.searchFilterGroup.setValue({searchFilter: this.searchFilterGroup.getRawValue().searchFilter});
          }),
          debounceTime(300)
        ),
      this.searchFilterGroup.get('searchFilter').valueChanges
    )
    .pipe(switchMap((vals: string[]) => {
      const userInput = vals[0];
      const searchFilter = vals[1];
      return this.currencyService.getCurrenciesForAutoComplete(userInput, searchFilter);
    }),
    this.errorService.standardSubscriptionErrorHandler([]));
  }

  saveNewCurrencyPair(): void {
    if (this.newCurrencyPair.from && this.newCurrencyPair.to) {
      this.currencyService.addCurrencyPair(this.newCurrencyPair)
      .subscribe(() => {
        this.snackbarService.openSnackBar(`New currency pair tracker saved!`);
        this.currencyService.emitLatestCurrencyPair(this.newCurrencyPair);
        this.currencyGroup1.reset();
        this.currencyGroup2.reset();
        this.newCurrencyPair = { from: null, to: null, sortID: null };
    }, (res) => {
      this.errorService.openErrorDialog(res.error);
    });
    }
  }

  displayFn(currency: Currency): string {
    if (currency) { return `${currency.code} -- ${currency.name}`; }
  }

  setNewCurrency(currency: Currency, idx: number): void {
    if (idx > 0) {
      this.newCurrencyPair.to = currency;
    } else {
      this.newCurrencyPair.from = currency;
    }
    if (this.newCurrencyPair.from && this.newCurrencyPair.to) {
      this.newCurrencyPair.sortID = `${this.newCurrencyPair.from.code}v${this.newCurrencyPair.to.code}`;
    }
  }

}
