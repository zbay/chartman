import { ApiModelProperty } from '@nestjs/swagger';

import { IsString, IsEmail, IsNotEmpty } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class SimpleEmailDTO {

    @ApiModelProperty({ example: `person@gmail.com` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @IsEmail()
    readonly email: string;

  }
