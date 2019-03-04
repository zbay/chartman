import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { first, debounceTime, switchMap, filter } from 'rxjs/operators';
import { Observable } from 'rxjs';

import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';
import { Stock } from '@charts/models/stock';
import { StockService } from '@charts/services/stock/stock.service';

@Component({
  selector: 'app-new-stock-tracker',
  templateUrl: './new-stock-tracker.component.html',
  styleUrls: ['./new-stock-tracker.component.scss']
})
export class NewStockTrackerComponent implements OnInit {
  fb = new FormBuilder();
  stockGroup: FormGroup = this.fb.group({
    userInput: ['', [Validators.required]]
    // when a symbolID is chosen, need to save the symbol and name for immediate front-end use
  });
  filteredStocks$: Observable<Stock[]>;
  newStock: Stock;

  constructor(private readonly errorService: ErrorService,
              private readonly snackbarService: SnackBarService,
              private readonly stockService: StockService) { }

  ngOnInit() {
    this.filteredStocks$ = this.stockGroup
      .get('userInput')
      .valueChanges
      .pipe<any, string, Stock[], Stock[]>(
        filter((val) => typeof val === 'string'),
        debounceTime(300),
        switchMap((value) => {
          return this.stockService.getStocksForAutoComplete(value);
        }),
        this.errorService.standardSubscriptionErrorHandler([])
      );
  }

  addStock() {
    this.stockService.addStock(this.newStock)
      .pipe(first())
      .subscribe(() => {
        this.snackbarService.openSnackBar(`${this.newStock.symbol} stock tracker saved!`);
        this.stockService.emitLatestStock(this.newStock);
        this.stockGroup.reset();
        this.newStock = null;
    }, (res) => {
      this.errorService.openErrorDialog({
        message: res.error.message,
        name: `Error`,
        stack: res.error.stack
      });
    });
  }

  displayFn(stock: Stock) {
    if (stock) { return `${stock.symbol} -- ${stock.name}`; }
  }

  setNewStock(stock: Stock) {
    this.newStock = stock;
  }
}
