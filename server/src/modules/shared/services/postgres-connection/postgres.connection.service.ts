import { Injectable } from '@nestjs/common';

import { Pool } from 'pg';

import { ConfigService } from '../config/config.service';
import { PostgresConnectionConfig } from '@shared/interfaces/postgres-connection-config';

@Injectable()
export class PostgresConnectionService {
    private _postgresConfig: PostgresConnectionConfig;
    private _pool: Pool;

    constructor(private readonly configService: ConfigService) {
        this._postgresConfig = this.configService.get(`postgresConfig`);
        this._pool = new Pool(this._postgresConfig);
    }

    get pool(): Pool {
        return this._pool;
    }
}
