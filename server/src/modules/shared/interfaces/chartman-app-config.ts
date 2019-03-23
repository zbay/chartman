import { PostgresConnectionConfig } from './postgres-connection-config';

export interface ChartmanAppConfig {
    alphavantage_api_key: string;
    cryptocompare_api_key: string;
    env: string;
    host: string;
    iex_api_public_token: string;
    iex_api_secret_token: string;
    jwt_secret: string;
    port: number;
    postgres_config: PostgresConnectionConfig;
    ses_bounce_queue_url: string;
    ses_complaint_queue_url: string;
}
