import { CurrencyPair } from './currency-pair';
import { TechnicalDataPoint } from './technical-data-point';

export interface CurrencyPairChartData {
    currencyPair: CurrencyPair;
    series: TechnicalDataPoint[];
  }
