import { ApiModelProperty } from '@nestjs/swagger';

import { IsString, IsEmail, IsNotEmpty, MinLength } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class ChangePasswordUserDTO {

    @ApiModelProperty({ example: `person@gmail.com` })
    @IsEmail({}, {message: `Invalid email address!`})
    @IsNotEmpty()
    @Trim()
    readonly email: string;

    @ApiModelProperty({ example: `thisismypassword1` })
    @IsString()
    @IsNotEmpty()
    @MinLength(8, {
        message: `Password is too short!`
    })
    password: string;

    @ApiModelProperty({ example: `thisismypassword1` })
    @IsString()
    @IsNotEmpty()
    readonly confirmPassword: string;
  }
