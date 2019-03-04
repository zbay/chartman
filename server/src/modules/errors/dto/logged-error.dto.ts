import { ToInt } from 'class-sanitizer';
import { IsNotEmpty, IsString } from 'class-validator';
import { ApiModelProperty } from '@nestjs/swagger';

export class LoggedErrorDto {

    @ApiModelProperty({ example: {name: 'Common Error', message: 'You made a mistake!', stack: `{line: 500, err: "Bug"}`} })
    @IsNotEmpty()
    readonly error: Error;

    @ApiModelProperty({ example: 1})
    @ToInt()
    readonly userID: number;

    @ApiModelProperty({ example: `https://chartman.zbay.xyz/login`})
    @IsNotEmpty()
    @IsString()
    readonly url: string;

  }
