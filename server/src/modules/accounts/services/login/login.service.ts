import { Injectable, HttpStatus, HttpException } from '@nestjs/common';

import * as bcrypt from 'bcrypt';

import { LoginDTO } from '@accounts/dto/login.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { TokenService } from '@accounts/services/token/token.service';

@Injectable()
export class LoginService {

    constructor(private readonly postgres_query_service: PostgresQueryService,
                private readonly token_service: TokenService) {
    }

    async login(credentials: LoginDTO): Promise<string> {
        const user = await this.postgres_query_service.queryFunction({
            function: `fn_retrieve_user_for_login`,
            params: [credentials.email],
            err_msg: `Could not login. Please try again later.`
        });
        if (!user || !user.password) {
            throw new HttpException({name: `Invalid Credentials`
            , message: `Invalid Credentials`}
            , HttpStatus.FORBIDDEN);
        }
        const correct_password = await bcrypt.compare(credentials.password, user.password)
            .catch((err: Error) => {
                throw new HttpException({
                    name: `Bcrypt comparison failure`,
                    message: `Failed to validate password`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
        if (!correct_password) {
            throw new HttpException({name: `Invalid Credentials`
            , message: `Invalid Credentials`}
            , HttpStatus.FORBIDDEN);
        } else {
            await this.postgres_query_service.queryFunction({
                function: `fn_reset_user_strikes`,
                params: [credentials.email]
            });
            return this.token_service.getToken(user.id, user.roles);
        }
    }
}
