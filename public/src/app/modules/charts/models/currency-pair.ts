import { Currency } from './currency';

export interface CurrencyPair {
    from: Currency;
    to: Currency;
    sort_id?: string;
    names?: string;
  }
