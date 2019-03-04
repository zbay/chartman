import { Stock } from './stock';
import { TechnicalDataPoint } from './technical-data-point';

export interface StockChartData {
    stock: Stock;
    series: TechnicalDataPoint[];
  }
