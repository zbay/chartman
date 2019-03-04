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

  getStockData(stockID: number): Observable<StockChartData> {
    return this.http.get(`${environment.apiEndpoint}/stocks/chart-data?stockID=${stockID}`)
      .pipe(map((response: any) => response.data),
        map((results: StockChartData) => {
        return {
          stock: results.stock,
          series: results.series
        };
      }));
  }

  getCurrencyPairData(fromID: number, toID: number): Observable<CurrencyPairChartData> {
    return this.http.get(`${environment.apiEndpoint}/currencies/chart-data?fromID=${fromID}&toID=${toID}`)
      .pipe(map((response: any) => response.data),
        map((results: CurrencyPairChartData) => {
        return {
          currencyPair: results.currencyPair,
          series: results.series
        };
      }));
  }
}
