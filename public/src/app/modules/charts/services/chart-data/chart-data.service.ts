import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

import { map } from 'rxjs/operators';

import { CurrencyPairChartData } from '@charts/models/currency-pair-chart-data';
import { environment } from '@env/environment';
import { StockChartData } from '@charts/models/stock-chart-data';

@Injectable({
  providedIn: 'root'
})
export class ChartDataService {

  constructor(private http: HttpClient) { }

  getStockData(stock_id: number): Observable<StockChartData> {
    return this.http.get(`${environment.api_endpoint}/stocks/chart-data?stock_id=${stock_id}`)
      .pipe(map((response: any) => response.data),
        map((results: StockChartData) => {
        return {
          stock: results.stock,
          series: results.series
        };
      }));
  }

  getCurrencyPairData(from_id: number, to_id: number): Observable<CurrencyPairChartData> {
    return this.http.get(`${environment.api_endpoint}/currencies/chart-data?from_id=${from_id}&to_id=${to_id}`)
      .pipe(map((response: any) => response.data),
        map((results: CurrencyPairChartData) => {
        return {
          currencyPair: results.currencyPair,
          series: results.series
        };
      }));
  }
}
