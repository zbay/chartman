import { Controller, Post, Patch, Body, HttpStatus, HttpCode, Req, Get, Param, Query, Delete } from '@nestjs/common';

import { NewUserDTO } from '@accounts/dto/new-user.dto';
import { UserService } from '@accounts/services/user/user.service';
import { User } from '@accounts/interfaces/user';
import { GetMyTrackersDTO } from '@shared/dto/get-my-trackers.dto';
import { UserForAdmin } from '@accounts/interfaces/user-for-admin.interface';

@Controller('accounts/user')
export class UserController {

    constructor(private readonly userService: UserService) {
    }

    @Get()
    @HttpCode(HttpStatus.OK)
    async getLoggedInUser(@Req() req): Promise<User> {
        return this.userService.findOneByID(req.payload.sub);
    }

    @Patch()
    @HttpCode(HttpStatus.OK)
    async editUser(@Body() editedUser: NewUserDTO, @Req() req): Promise<boolean> {
        return this.userService.editUser(editedUser, req.payload.sub);
    }

    @Post()
    @HttpCode(HttpStatus.CREATED)
    async createUser(@Body() newUser: NewUserDTO): Promise<string> {
        return this.userService.createUser(newUser);
    }

    @Get(`/search`)
    @HttpCode(HttpStatus.OK)
    async searchUsers(@Query() query: GetMyTrackersDTO): Promise<UserForAdmin[]> {
        return this.userService.search(query);
    }

    @Delete('/:user_id')
    @HttpCode(HttpStatus.OK)
    async deleteUser(@Param('user_id') user_id: number): Promise<any> {
        return this.userService.deleteUser(user_id);
    }
}
