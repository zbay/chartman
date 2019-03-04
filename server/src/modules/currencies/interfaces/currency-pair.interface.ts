import { Currency } from './currency.interface';

export interface CurrencyPair {
    from: Currency;
    to: Currency;
    sortID?: string;
  }
