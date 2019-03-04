import { Controller, Post, Body, HttpCode, HttpStatus, Get, Param } from '@nestjs/common';

import { SimpleEmailDTO } from '@accounts/dto/simple-email.dto';
import { UserService } from '@accounts/services/user/user.service';

@Controller('accounts/reset-password')
export class ResetPasswordController {

    constructor(private readonly userService: UserService) {
    }

    @Post('request-password-change')
    @HttpCode(HttpStatus.NO_CONTENT)
    async requestPasswordChange(@Body() simpleEmailDto: SimpleEmailDTO): Promise<any> {
        return this.userService.requestPasswordChange(simpleEmailDto.email);
    }

    @Get('validate-change-request/:route')
    @HttpCode(HttpStatus.OK)
    async validatePasswordChangeRequest(@Param('route') route: string): Promise<boolean> {
        return this.userService.isValidPasswordChangeRequest(route);
    }

}
