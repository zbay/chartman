import { ChartmanAppConfig } from './chartman-app-config';

export interface ChartmanAppConfigs {
    dev: ChartmanAppConfig;
    prod: ChartmanAppConfig;
    test?: ChartmanAppConfig;
}
