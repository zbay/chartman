import { PostgresConnectionConfig } from './postgres-connection-config';

export interface ChartmanAppConfig {
    alphaVantageApiKey: string;
    cryptoCompareApiKey: string;
    env: string;
    host: string;
    iexApiPublicToken: string;
    iexApiSecretToken: string;
    jwtSecret: string;
    port: number;
    postgresConfig: PostgresConnectionConfig;
    sesBounceQueueURL: string;
    sesComplaintQueueURL: string;
}
