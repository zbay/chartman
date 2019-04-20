import { Controller, Post, Patch, Body, HttpStatus, HttpCode, Req, Get, Param, Query, Delete } from '@nestjs/common';

import { NewUserDTO } from '@accounts/dto/new-user.dto';
import { UserService } from '@accounts/services/user/user.service';
import { User } from '@accounts/interfaces/user';
import { GetMyTrackersDTO } from '@shared/dto/get-my-trackers.dto';
import { UserForAdmin } from '@accounts/interfaces/user-for-admin.interface';
import { AdminEditedUserDTO } from '@accounts/dto/admin-edited-user.dto';

@Controller('accounts/user')
export class UserController {

    constructor(private readonly user_service: UserService) {}

    @Get()
    @HttpCode(HttpStatus.OK)
    async getLoggedInUser(@Req() req): Promise<User> {
        return this.user_service.findOneByID(req.payload.sub);
    }

    @Patch()
    @HttpCode(HttpStatus.OK)
    async editUser(@Body() editedUser: NewUserDTO, @Req() req): Promise<boolean> {
        return this.user_service.editUser(editedUser, req.payload.sub);
    }

    @Patch(`/admin/edit`)
    @HttpCode(HttpStatus.OK)
    async editUserAsAdmin(@Body() edited_user: AdminEditedUserDTO): Promise<boolean> {
        // console.log(edited_user);
        return this.user_service.editUserAsAdmin(edited_user);
    }

    @Post()
    @HttpCode(HttpStatus.CREATED)
    async createUser(@Body() newUser: NewUserDTO): Promise<string> {
        return this.user_service.createUser(newUser);
    }

    @Get(`/search`)
    @HttpCode(HttpStatus.OK)
    async searchUsers(@Query() query: GetMyTrackersDTO): Promise<UserForAdmin[]> {
        return this.user_service.search(query);
    }

    @Delete('/:user_id')
    @HttpCode(HttpStatus.OK)
    async deleteUser(@Param('user_id') user_id: number): Promise<any> {
        return this.user_service.deleteUser(user_id);
    }
}
