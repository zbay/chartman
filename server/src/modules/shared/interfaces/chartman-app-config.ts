import { PostgresConnectionConfig } from './postgres-connection-config';

export interface ChartmanAppConfig {
    alphaVantageApiKey: string;
    cryptoCompareApiKey: string;
    env: string;
    host: string;
    iexApiKey: string;
    jwtSecret: string;
    port: number;
    postgresConfig: PostgresConnectionConfig;
}
