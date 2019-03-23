import { Controller, Post, Body, HttpCode, HttpStatus, Get, Param } from '@nestjs/common';

import { ChangePasswordUserDTO } from '@accounts/dto/change-password-user.dto';
import { SimpleEmailDTO } from '@accounts/dto/simple-email.dto';
import { UserService } from '@accounts/services/user/user.service';

@Controller('accounts/reset-password')
export class ResetPasswordController {

    constructor(private readonly user_service: UserService) {
    }

    @Post('request-password-change')
    @HttpCode(HttpStatus.NO_CONTENT)
    async requestPasswordChange(@Body() simple_email_dto: SimpleEmailDTO): Promise<any> {
        return this.user_service.requestPasswordChange(simple_email_dto.email);
    }

    @Get('validate-change-request/:route')
    @HttpCode(HttpStatus.OK)
    async validatePasswordChangeRequest(@Param('route') route: string): Promise<boolean> {
        return this.user_service.isValidPasswordChangeRequest(route);
    }

    @Post('change-password/:password_change_id')
    @HttpCode(HttpStatus.NO_CONTENT)
    changePassword(@Body() change_password_dto: ChangePasswordUserDTO, @Param('password_change_id') password_change_id: string): Promise<void> {
        return this.user_service.changePassword(password_change_id, change_password_dto);
    }

}
