import { Controller, Post, Body, HttpCode, HttpStatus } from '@nestjs/common';

import { LoginDTO } from '@accounts/dto/login.dto';

import { LoginService } from '@accounts/services/login/login.service';

@Controller('accounts/login')
export class LoginController {

    constructor(private readonly login_service: LoginService) {
    }

    @Post()
    @HttpCode(HttpStatus.OK)
    async login(@Body() credentials: LoginDTO): Promise<string> {
        return await this.login_service.login(credentials);

    }

}
