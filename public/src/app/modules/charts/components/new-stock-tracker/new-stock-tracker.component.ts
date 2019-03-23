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
  stock_group: FormGroup = this.fb.group({
    user_input: ['', [Validators.required]]
    // when a symbol_id is chosen, need to save the symbol and name for immediate front-end use
  });
  filtered_stocks$: Observable<Stock[]>;
  new_stock: Stock;

  constructor(private readonly error_service: ErrorService,
              private readonly snackbar_service: SnackBarService,
              private readonly stock_service: StockService) { }

  ngOnInit() {
    this.filtered_stocks$ = this.stock_group
      .get('user_input')
      .valueChanges
      .pipe<any, string, Stock[], Stock[]>(
        filter((val) => typeof val === 'string'),
        debounceTime(300),
        switchMap((value) => {
          return this.stock_service.getStocksForAutoComplete(value);
        }),
        this.error_service.standardSubscriptionErrorHandler([])
      );
  }

  addStock() {
    this.stock_service.addStock(this.new_stock)
      .pipe(first())
      .subscribe(() => {
        this.snackbar_service.openSnackBar(`${this.new_stock.symbol} stock tracker saved!`);
        this.stock_service.emitLatestStock(this.new_stock);
        this.stock_group.reset();
        this.new_stock = null;
    }, (res) => {
      this.error_service.openErrorDialog({
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
    this.new_stock = stock;
  }
}
