import { Injectable, HttpStatus } from '@nestjs/common';

import { hash as bcryptHash } from 'bcrypt';
import { randomBytes } from 'crypto';

import { AwsService } from '@shared/services/aws/aws.service';
import { ChangePasswordUserDTO } from '@accounts/dto/change-password-user.dto';
import { CustomException } from '@common/exceptions/custom.exception';
import { JwtPayload } from '@accounts/interfaces/jwt-payload';
import { NewUserDTO } from '@accounts/dto/new-user.dto';
import { PostgresQueryService } from '@shared/services/postgres-query/postgres-query.service';
import { TokenService } from '@accounts/services/token/token.service';
import { User } from '@accounts/interfaces/user';

@Injectable()
export class UserService {
    constructor(private readonly awsService: AwsService,
                private readonly tokenService: TokenService,
                private readonly postgresQueryService: PostgresQueryService) {}

    async changePassword(passwordChangeID: string, user: ChangePasswordUserDTO): Promise<void> {
        if (!this.passwordsDoMatch(user)) {
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        return this.postgresQueryService.queryFunction({
            function: `fn_change_password`,
            params: [passwordChangeID, user.email, await this.hashPassword(user.password)],
            errMsg: `Could not save new password. Check that you input the correct email, and that this link has not expired.`
        })
        .then((pwChangeSuccess: boolean) => {
            if (!pwChangeSuccess) {
                throw new CustomException({
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
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        newUser.password = await this.hashPassword(newUser.password);
        return this.postgresQueryService.queryFunction({
            function: `fn_add_user`,
            params: [newUser],
            errMsg: `Failed to save new user! Try another email address, or try again later.`
        })
        .then(async (user: User) => await this.tokenService.getToken(user.user_id, user.permissions));
    }

    async editUser(user: NewUserDTO, userID: number): Promise<boolean> {
        if (!this.passwordsDoMatch(user)) {
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not save changes to user.`}
                , HttpStatus.BAD_REQUEST);
        }
        user.password = await this.hashPassword(user.password);
        return this.postgresQueryService.queryFunction({
            function: `fn_update_user`,
            params: [user, userID],
            errMsg: `Failed to save your new account info! Try again later.`
        })
        .then(() =>  true);
    }

    async findOneByID(id: number): Promise<User> {
        return this.postgresQueryService.queryFunction({
            function: `fn_get_user_by_id`,
            params: [id],
            errMsg: `Could not retrieve your account details.`
        });
    }

    async hashPassword(password: string): Promise<string> {
        const saltRounds = 10;
        return bcryptHash(password, saltRounds);
    }

    passwordsDoMatch(newUser: NewUserDTO | ChangePasswordUserDTO): boolean {
        return newUser.password === newUser.confirmPassword;
    }

    async requestPasswordChange(email: string): Promise<any> {
        const randomRoute = await randomBytes(48).toString(`hex`);
        await this.postgresQueryService.queryFunction({
            function: `fn_request_password_change`,
            params: [email, randomRoute],
            errMsg: `Failed to request a new password!`
        });
        return this.awsService.sendPasswordResetEmail(email, randomRoute);
    }

    async isValidPasswordChangeRequest(route: string): Promise<boolean> {
        return this.postgresQueryService.queryFunction({
            function: `fn_validate_password_change_request_route`,
            params: [route]
        });
    }

    async validateUser(payload: JwtPayload): Promise<any> {
        return await this.findOneByID(payload.sub);
    }
}
