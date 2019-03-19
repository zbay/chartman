import { Injectable, HttpStatus } from '@nestjs/common';

import { hash as bcryptHash } from 'bcrypt';
import { randomBytes } from 'crypto';

import { AwsService } from '@shared/services/aws/aws.service';
import { ChangePasswordUserDTO } from '@accounts/dto/change-password-user.dto';
import { CustomException } from '@common/exceptions/custom.exception';
import { JwtPayload } from '@accounts/interfaces/jwt-payload';
import { NewUserDTO } from '@accounts/dto/new-user.dto';
import { TokenService } from '@accounts/services/token/token.service';
import { User } from '@accounts/interfaces/user';
import { Connection } from 'typeorm';

@Injectable()
export class UserService {
    constructor(private readonly awsService: AwsService,
                private readonly connection: Connection,
                private readonly tokenService: TokenService) {
    }

    firstRow(data: any[]): any {
        return data[0] || {};
    }

    getFirstRowNamedProperty(result, name: string): any {
        return result[0] ? result[0][name] : null;
    }

    async changePassword(passwordChangeID: string, user: ChangePasswordUserDTO): Promise<void> {
        if (!this.passwordsDoMatch(user)) {
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        const rowName = `change_succeeded`;
        user.password = await this.hashPassword(user.password);
        return this.connection.query(`SELECT * FROM public.fn_change_password($1, $2, $3) AS ${rowName}`,
                [passwordChangeID, user.email, user.password])
            .then((data) => {
                const changeWasSuccessful = this.getFirstRowNamedProperty(data, rowName);
                if (!changeWasSuccessful) {
                    throw new CustomException({
                        name: `Password Change Request Expiration Error`,
                        message: `Could not save new password. Check that you input the correct email, and that this link has not expired.`
                    }, HttpStatus.INTERNAL_SERVER_ERROR);
                    } else {
                        return;
                    }
                })
                .catch((err: Error) => {
                    throw new CustomException({
                        name: `Password Change Request Expiration Error`,
                        message: `Could not save new password. Check that you input the correct email, and that this link has not expired.`,
                        stack: err.stack
                    }, HttpStatus.INTERNAL_SERVER_ERROR);
                });
    }

    async createUser(newUser: NewUserDTO): Promise<string> {
        if (!this.passwordsDoMatch(newUser)) {
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not create user.`}
                , HttpStatus.BAD_REQUEST);
        }
        const resultName = `new_user`;
        newUser.password = await this.hashPassword(newUser.password);
        return this.connection.query(`SELECT * from public.fn_add_user($1) AS ${resultName}`,
                [newUser])
            .then(async (result) => {
                const user: User = this.getFirstRowNamedProperty(result, resultName);
                return await this.tokenService.getToken(user.user_id, user.permissions);
            })
            .catch((err) => {
                throw new CustomException({
                        name: `User Creation Error`,
                        message: `Failed to save new user! Try another email address, or try again later.`,
                        stack: err
                    }
                    , HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

    async editUser(user: NewUserDTO, userID: number): Promise<boolean> {
        if (!this.passwordsDoMatch(user)) {
            throw new CustomException({name: `Password Mismatch`
                , message: `Password mismatch! Could not save changes to user.`}
                , HttpStatus.BAD_REQUEST);
        }
        user.password = await this.hashPassword(user.password);
        return this.connection.query(`SELECT * from public.fn_update_user($1, $2) AS updatedUser`,
            [user, userID])
            .then(() =>  true)
            .catch((err: Error) => {
                throw new CustomException({
                    name: `User Update Error`,
                    message: err.message || `Failed to save your new account info! Try again later.`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

    async findOneByID(id: number): Promise<User> {
        return this.connection.query(`SELECT first_name, last_name, email
                FROM public.users
                WHERE user_id = $1`,
                [id])
        .then((data) => {
            return this.firstRow(data);
        })
        .catch((err) => {
            throw new CustomException({
                name: 'AccountRetrievalError',
                message: `Could not retrieve your account details.`,
                stack: err.stack
            }, HttpStatus.INTERNAL_SERVER_ERROR);
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
        await this.connection.query(`SELECT FROM public.fn_request_password_change($1, $2)`,
                [email, randomRoute])
            .catch((err: Error) => {
                throw new CustomException({
                    message: `Failed to request a new password!`,
                    name: `Password Change Request Failure`,
                    stack: err.stack
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
        return this.awsService.sendPasswordResetEmail(email, randomRoute);
    }

    async isValidPasswordChangeRequest(route: string): Promise<boolean> {
        const rowName = `is_valid_change_request`;
        return this.connection.query(`SELECT * FROM public.fn_validate_password_change_request_route($1) AS ${rowName}`,
                [route])
            .then((data) => {
                return this.getFirstRowNamedProperty(data, rowName);
            })
            .catch((err: Error) => {
                throw new CustomException({
                    stack: err.stack,
                    message: err.message,
                    name: `Password Change Request Validation Failure`
                }, HttpStatus.INTERNAL_SERVER_ERROR);
            });
    }

    async validateUser(payload: JwtPayload): Promise<any> {
        return await this.findOneByID(payload.sub);
    }
}
