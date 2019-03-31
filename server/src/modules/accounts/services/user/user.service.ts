import { Injectable, HttpStatus, HttpException } from '@nestjs/common';

import { hash as bcryptHash } from 'bcrypt';
import { randomBytes } from 'crypto';

import { AwsService } from '@shared/services/aws/aws.service';
import { ChangePasswordUserDTO } from '@accounts/dto/change-password-user.dto';
import { JwtPayload } from '@accounts/interfaces/jwt-payload';
import { NewUserDTO } from '@accounts/dto/new-user.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { TokenService } from '@accounts/services/token/token.service';
import { User } from '@accounts/interfaces/user';

@Injectable()
export class UserService {
    constructor(private readonly aws_service: AwsService,
                private readonly token_service: TokenService,
                private readonly postgres_query_service: PostgresQueryService) {}

    async changePassword(password_change_id: string, user: ChangePasswordUserDTO): Promise<void> {
        if (!this.passwordsDoMatch(user)) {
            throw new HttpException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        return this.postgres_query_service.queryFunction({
            function: `fn_change_password`,
            params: [password_change_id, user.email, await this.hashPassword(user.password)],
            err_msg: `Could not save new password. Check that you input the correct email, and that this link has not expired.`
        })
        .then((pwChangeSuccess: boolean) => {
            if (!pwChangeSuccess) {
                throw new HttpException({
                    name: `Password Change Request Expiration Error`,
                    message: `Could not save new password. Check that you input the correct email, and that this link has not expired.`
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            } else {
                return;
            }
        });
    }

    async createUser(newUser: NewUserDTO): Promise<string> {
        if (!this.passwordsDoMatch(newUser)) {
            throw new HttpException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        newUser.password = await this.hashPassword(newUser.password);
        return this.postgres_query_service.queryFunction<User>({
            function: `fn_add_user`,
            params: [newUser],
            err_msg: `Failed to save new user! Try another email address, or try again later.`
        })
        .then(async (user) => await this.token_service.getToken(user.id, user.roles));
    }

    async editUser(user: NewUserDTO, user_id: number): Promise<boolean> {
        if (!this.passwordsDoMatch(user)) {
            throw new HttpException({name: `Password Mismatch`
                , message: `Password mismatch! Could not save changes to user.`}
                , HttpStatus.BAD_REQUEST);
        }
        user.password = await this.hashPassword(user.password);
        return this.postgres_query_service.queryFunction({
            function: `fn_update_user`,
            params: [user, user_id],
            err_msg: `Failed to save your new account info! Try again later.`
        })
        .then(() =>  true);
    }

    async findOneByID(id: number): Promise<User> {
        return this.postgres_query_service.queryFunction<User>({
            function: `fn_get_user_by_id`,
            params: [id],
            err_msg: `Could not retrieve your account details.`
        });
    }

    async hashPassword(password: string): Promise<string> {
        const saltRounds = 10;
        return bcryptHash(password, saltRounds);
    }

    passwordsDoMatch(new_user: NewUserDTO | ChangePasswordUserDTO): boolean {
        return new_user.password === new_user.confirm_password;
    }

    async requestPasswordChange(email: string): Promise<any> {
        const random_route = await randomBytes(48).toString(`hex`);
        await this.postgres_query_service.queryFunction({
            function: `fn_request_password_change`,
            params: [email, random_route],
            err_msg: `Failed to request a new password!`
        });
        return this.aws_service.sendPasswordResetEmail(email, random_route);
    }

    async isValidPasswordChangeRequest(route: string): Promise<boolean> {
        return this.postgres_query_service.queryFunction({
            function: `fn_validate_password_change_request_route`,
            params: [route]
        });
    }

    async validateUser(payload: JwtPayload): Promise<any> {
        return await this.findOneByID(payload.sub);
    }
}
