import { TechnicalDataPoint } from '@technicals/interfaces/technical-data-point';
import { CurrencyPair } from './currency-pair.interface';

export interface CurrencyPairChartData {
    currencyPair: CurrencyPair;
    series: TechnicalDataPoint[];
  }
