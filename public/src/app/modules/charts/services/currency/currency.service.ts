import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Subject, Observable } from 'rxjs';

import { Currency } from '@charts/models/currency';
import { CurrencyPair } from '@charts/models/currency-pair';
import { environment } from '@env/environment';
import { map } from 'rxjs/operators';

const currenciesURL = `${environment.apiEndpoint}/currencies`;

@Injectable({
  providedIn: 'root'
})
export class CurrencyService {

  private newCurrencyPair: Subject<CurrencyPair> = new Subject();
  newCurrencyPair$ = this.newCurrencyPair.asObservable();

  constructor(private http: HttpClient) { }

  addCurrencyPair(newCurrencyPair: CurrencyPair): Observable<any> {
    return this.http.post(currenciesURL, newCurrencyPair);
  }

  deleteCurrencyPair(fromID: number, toID: number): Observable<any> {
    return this.http.delete(`${currenciesURL}?fromID=${fromID}&toID=${toID}`);
  }

  emitLatestCurrencyPair(currencyPair: CurrencyPair): void {
    this.newCurrencyPair.next(currencyPair);
  }

  getCurrenciesForAutoComplete(searchQuery: string, searchFilter: string): Observable<Currency[]> {
    return this.http.post<Currency[]>(`${currenciesURL}/autocomplete`
      , { searchQuery: searchQuery, searchFilter: searchFilter })
      .pipe(map((res: any) => res.data));
  }

  getMyCurrencyPairs(): Observable<CurrencyPair[]> {
    return this.http.get<CurrencyPair[]>(`${currenciesURL}/my-currency-pairs`)
    .pipe(map((res: any) => res.data));
  }
}
