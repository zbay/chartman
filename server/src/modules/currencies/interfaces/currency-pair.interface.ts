import { Currency } from './currency.interface';

export interface CurrencyPair {
    from: Currency;
    to: Currency;
    sort_id?: string;
    names?: string;
  }
