import { Currency } from './currency';

export interface CurrencyPair {
    from: Currency;
    to: Currency;
    sortID?: string;
  }
