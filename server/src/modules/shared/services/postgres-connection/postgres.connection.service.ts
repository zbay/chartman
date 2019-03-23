import { Injectable } from '@nestjs/common';

import { Pool } from 'pg';

import { ConfigService } from '../config/config.service';
import { PostgresConnectionConfig } from '@shared/interfaces/postgres-connection-config';

@Injectable()
export class PostgresConnectionService {
    private _postgres_config: PostgresConnectionConfig;
    private _pool: Pool;

    constructor(private readonly config_service: ConfigService) {
        this._postgres_config = this.config_service.get(`postgres_config`);
        this._pool = new Pool(this._postgres_config);
    }

    get pool(): Pool {
        return this._pool;
    }
}
