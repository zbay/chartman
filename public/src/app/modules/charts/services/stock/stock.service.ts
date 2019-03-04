import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { HttpClient } from '@angular/common/http';

import { environment } from '@env/environment';
import { Stock } from '@charts/models/stock';
import { map } from 'rxjs/operators';

const stocksURL = `${environment.apiEndpoint}/stocks`;

@Injectable({
  providedIn: 'root'
})
export class StockService {

  private newStock: Subject<Stock> = new Subject();
  newStock$ = this.newStock.asObservable();

  constructor(private http: HttpClient) { }

  addStock(newStock: Stock): Observable<any> {
    return this.http.post(stocksURL, newStock);
  }

  deleteStock(stockId: number): Observable<any> {
    return this.http.delete(`${stocksURL}?stockID=${stockId}`);
  }

  emitLatestStock(stock: Stock): void {
    this.newStock.next(stock);
  }

  getStocksForAutoComplete(searchQuery: string): Observable<Stock[]> {
    return this.http.post<Stock[]>(`${stocksURL}/autocomplete`, {searchQuery: searchQuery})
      .pipe(map((res: any) => res.data));
  }

  getMyStocks(): Observable<Stock[]> {
    return this.http.get<Stock[]>(`${stocksURL}/my-stocks`)
      .pipe(map((res: any) => res.data));
  }
}
