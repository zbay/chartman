import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { HttpClient } from '@angular/common/http';

import { environment } from '@env/environment';
import { Stock } from '@charts/models/stock';
import { map } from 'rxjs/operators';

const stocks_url = `${environment.api_endpoint}/stocks`;

@Injectable({
  providedIn: 'root'
})
export class StockService {

  private new_stock: Subject<Stock> = new Subject();
  new_stock$ = this.new_stock.asObservable();

  constructor(private http: HttpClient) { }

  addStock(new_stock: Stock): Observable<any> {
    return this.http.post(stocks_url, new_stock);
  }

  deleteStock(stock_id: number): Observable<any> {
    return this.http.delete(`${stocks_url}?stock_id=${stock_id}`);
  }

  emitLatestStock(stock: Stock): void {
    this.new_stock.next(stock);
  }

  getStocksForAutoComplete(search_query: string): Observable<Stock[]> {
    return this.http.post<Stock[]>(`${stocks_url}/autocomplete`, {search_query})
      .pipe(map((res: any) => res.data));
  }

  getMyStocks(): Observable<Stock[]> {
    return this.http.get<Stock[]>(`${stocks_url}/my-stocks`)
      .pipe(map((res: any) => res.data));
  }
}
