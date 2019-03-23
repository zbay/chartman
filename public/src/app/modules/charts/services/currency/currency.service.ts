import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Subject, Observable } from 'rxjs';

import { Currency } from '@charts/models/currency';
import { CurrencyPair } from '@charts/models/currency-pair';
import { environment } from '@env/environment';
import { map } from 'rxjs/operators';

const currencies_url = `${environment.api_endpoint}/currencies`;

@Injectable({
  providedIn: 'root'
})
export class CurrencyService {

  private new_currency_pair: Subject<CurrencyPair> = new Subject();
  new_currency_pair$ = this.new_currency_pair.asObservable();

  constructor(private http: HttpClient) { }

  addCurrencyPair(new_currency_pair: CurrencyPair): Observable<any> {
    return this.http.post(currencies_url, new_currency_pair);
  }

  deleteCurrencyPair(from_id: number, to_id: number): Observable<any> {
    return this.http.delete(`${currencies_url}?from_id=${from_id}&to_id=${to_id}`);
  }

  emitLatestCurrencyPair(currency_pair: CurrencyPair): void {
    this.new_currency_pair.next(currency_pair);
  }

  getCurrenciesForAutoComplete(search_query: string, search_filter: string): Observable<Currency[]> {
    return this.http.post<Currency[]>(`${currencies_url}/autocomplete`
      , { search_query, search_filter })
      .pipe(map((res: any) => res.data));
  }

  getMyCurrencyPairs(): Observable<CurrencyPair[]> {
    return this.http.get<CurrencyPair[]>(`${currencies_url}/my-currency-pairs`)
    .pipe(map((res: any) => res.data));
  }
}
