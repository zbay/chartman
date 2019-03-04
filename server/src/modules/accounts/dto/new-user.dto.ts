import { Trim } from 'class-sanitizer';
import { IsString, IsEmail, IsNotEmpty, MaxLength, MinLength } from 'class-validator';
import { ApiModelProperty } from '@nestjs/swagger';

export class NewUserDTO {

    @ApiModelProperty({ example: `Person` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @MinLength(1)
    @MaxLength(100, {
        message: `First name is too long!`
    })
    readonly firstName: string;

    @ApiModelProperty({ example: `McPerson` })
    @IsString()
    @Trim()
    @IsNotEmpty()
    @MaxLength(100, {
        message: `Last name is too long!`
    })
    readonly lastName: string;

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
