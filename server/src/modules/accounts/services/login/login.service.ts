import { Injectable, HttpStatus } from '@nestjs/common';

import * as bcrypt from 'bcrypt';

import { CustomException } from '@common/exceptions/custom.exception';
import { LoginDTO } from '@accounts/dto/login.dto';
import { TokenService } from '@accounts/services/token/token.service';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';

@Injectable()
export class LoginService {

    constructor(private readonly postgresQueryService: PostgresQueryService,
                private readonly tokenService: TokenService) {
    }

    async login(credentials: LoginDTO): Promise<string> {
        const user = await this.postgresQueryService.queryFunction({
            function: `fn_retrieve_user_for_login`,
            params: [credentials.email],
            errMsg: `Could not login. Please try again later.`
        });
        if (!user || !user.password) {
            throw new CustomException({name: `Invalid Credentials`
            , message: `Invalid Credentials`}
            , HttpStatus.FORBIDDEN);
        }
        const correctPassword = await bcrypt.compare(credentials.password, user.password)
            .catch((err: Error) => {
                throw new CustomException({
                    name: `Bcrypt comparison failure`,
                    message: `Failed to validate password`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
        if (!correctPassword) {
            throw new CustomException({name: `Invalid Credentials`
            , message: `Invalid Credentials`}
            , HttpStatus.FORBIDDEN);
        } else {
            await this.postgresQueryService.queryFunction({
                function: `fn_reset_user_strikes`,
                params: [credentials.email]
            });
            return this.tokenService.getToken(user.user_id, user.permissions);
        }
    }
}
