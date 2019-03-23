import { Injectable } from '@nestjs/common';

import * as customEnv from 'custom-env';

import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';

@Injectable()
export class ConfigService {
    private _config: ChartmanAppConfig;

    constructor() {
        customEnv.env(process.env.NODE_ENV);
        const env = process.env;
        this._config = {
            alphavantage_api_key: env.ALPHAVANTAGE_API_KEY,
            cryptocompare_api_key: env.CRYPTOCOMPARE_API_KEY,
            env: env.APP_ENV,
            host: env.HOST,
            iex_api_public_token: env.IEX_PUBLIC_TOKEN,
            iex_api_secret_token: env.IEX_SECRET_TOKEN,
            jwt_secret: env.JWT_SECRET,
            port: Number(env.PORT),
            postgres_config: {
                host: env.POSTGRES_HOST,
                user: env.POSTGRES_USER,
                password: env.POSTGRES_PASSWORD,
                port: Number(env.POSTGRES_PORT),
                database: env.POSTGRES_DATABASE
            },
            ses_bounce_queue_url: env.SES_BOUNCE_QUEUE_URL,
            ses_complaint_queue_url: env.SES_COMPLAINT_QUEUE_URL
        };
    }

    get config(): ChartmanAppConfig {
        if (!this._config) {
            throw new Error(`No config available!`);
        }
        return this._config;
    }

    get(variable: string): any {
        return this.config[variable];
    }
}
