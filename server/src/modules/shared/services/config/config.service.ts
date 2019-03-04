import { Injectable } from '@nestjs/common';

import * as dotenv from 'dotenv';

import { ChartmanAppConfig } from '@shared/interfaces/chartman-app-config';
import { configs } from '@shared/services/config/configs';

@Injectable()
export class ConfigService {
    private _config: ChartmanAppConfig;

    constructor() {
        dotenv.config();
        this._config = configs[process.env.NODE_ENV];
        this._config.jwtSecret = process.env.JWT_SECRET;
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
