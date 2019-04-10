import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { HttpClient, HttpParams } from '@angular/common/http';

import { map } from 'rxjs/operators';

import { environment } from '@env/environment';
import { objToParams } from '@app/common/functions/obj-to-params';
import { PaginatedQueryOptions } from '@app/common/interfaces/paginated-query-options.enum';
import { Stock } from '@charts/models/stock';

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

  getMyStocks(options: PaginatedQueryOptions, search_filter: string = ``): Observable<Stock[]> {
    return this.http.get<Stock[]>(`${stocks_url}/my-stocks`, { params: objToParams(options, { search_filter }) })
      .pipe(map((res: any) => res.data));
  }

  getStocksForAutoComplete(search_query: string): Observable<Stock[]> {
    return this.http.post<Stock[]>(`${stocks_url}/autocomplete`, {search_query})
      .pipe(map((res: any) => res.data));
  }

}
