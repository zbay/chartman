import { ApiModelProperty } from '@nestjs/swagger';

import { IsString, IsEmail, IsNotEmpty, MinLength } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class LoginDTO {

    @ApiModelProperty({ example: `person@gmail.com` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @IsEmail()
    readonly email: string;

    @ApiModelProperty({ example: `thisismypassword1@gmail.com` })
    @IsString()
    @MinLength(8)
    readonly password: string;

  }
