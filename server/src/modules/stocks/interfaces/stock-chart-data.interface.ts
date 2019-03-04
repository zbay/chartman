import { TechnicalDataPoint } from '@technicals/interfaces/technical-data-point';
import { Stock } from './stock.interface';

export interface StockChartData {
    stock: Stock;
    series: TechnicalDataPoint[];
  }
