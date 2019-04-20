import { ApiModelProperty } from '@nestjs/swagger';

import { Trim } from 'class-sanitizer';
import { IsString, IsEmail, IsNotEmpty, MaxLength, MinLength, IsInt, Min, Max, IsArray } from 'class-validator';

import { Role } from '@common/enums/role.enum';
import { UserRole } from '@accounts/interfaces/user-role.interface';

export class AdminEditedUserDTO {

    @ApiModelProperty({ example: 1 })
    @IsInt()
    @Trim()
    @IsNotEmpty()
    readonly id: number;

    @ApiModelProperty({ example: `Person` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @MinLength(1)
    @MaxLength(100, {
        message: `First name is too long!`
    })
    readonly first_name: string;

    @ApiModelProperty({ example: `McPerson` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @MaxLength(100, {
        message: `Last name is too long!`
    })
    readonly last_name: string;

    @ApiModelProperty({ example: `person@gmail.com` })
    @IsEmail({}, {message: `Invalid email address!`})
    @IsNotEmpty()
    @Trim()
    readonly email: string;

    @ApiModelProperty({ example: 0 })
    @IsInt()
    @Min(0)
    @Max(10)
    @IsNotEmpty()
    @Trim()
    readonly strikes: number;

    @ApiModelProperty({ example: [Role.FREE] })
    @IsArray()
    @IsNotEmpty()
    readonly roles: UserRole[];
  }
