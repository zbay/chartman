import { TechnicalDataPoint } from './technical-data-point';

export interface TechnicalSeriesContainer {
    [key: string]: any;
    series: TechnicalDataPoint[];
}
