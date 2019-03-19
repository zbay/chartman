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
            alphaVantageApiKey: env.ALPHAVANTAGE_API_KEY,
            cryptoCompareApiKey: env.CRYPTOCOMPARE_API_KEY,
            env: env.APP_ENV,
            host: env.HOST,
            iexApiPublicToken: env.IEX_PUBLIC_TOKEN,
            iexApiSecretToken: env.IEX_SECRET_TOKEN,
            jwtSecret: env.JWT_SECRET,
            port: Number(env.PORT),
            postgresConfig: {
                host: env.POSTGRES_HOST,
                user: env.POSTGRES_USER,
                password: env.POSTGRES_PASSWORD,
                port: Number(env.POSTGRES_PORT),
                database: env.POSTGRES_DATABASE
            },
            sesBounceQueueURL: env.SES_BOUNCE_QUEUE_URL,
            sesComplaintQueueURL: env.SES_COMPLAINT_QUEUE_URL
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
