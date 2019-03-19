import { Injectable, HttpStatus } from '@nestjs/common';

import * as bcrypt from 'bcrypt';

import { Connection } from 'typeorm';
import { CustomException } from '@common/exceptions/custom.exception';
import { LoginDTO } from '@accounts/dto/login.dto';
import { TokenService } from '@accounts/services/token/token.service';
import { UserService } from '@accounts/services/user/user.service';

@Injectable()
export class LoginService {

    constructor(private readonly connection: Connection,
                private readonly tokenService: TokenService,
                private readonly userService: UserService) {
    }

    async login(credentials: LoginDTO): Promise<string> {
        const rowName = `user`;
        const user = await this.connection.query(`SELECT public.fn_retrieve_user_for_login($1) AS ${rowName}`, [credentials.email])
            .then((users) => {
                return this.userService.getFirstRowNamedProperty(users, rowName);
            })
            .catch((err: Error) => {
                throw new CustomException({
                    name: `Login Failure`,
                    message: `Could not login. Please try again later.`,
                    stack: err.stack
                },
                HttpStatus.INTERNAL_SERVER_ERROR);
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
            await this.connection.query(`SELECT public.fn_reset_user_strikes($1)`, [credentials.email]);
            return this.tokenService.getToken(user.user_id, user.permissions);
        }
    }
}
