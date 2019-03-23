import { ApiModelProperty } from '@nestjs/swagger';

import { IsNotEmpty, IsString } from 'class-validator';
import { ToInt } from 'class-sanitizer';

export class LoggedErrorDto {

    @ApiModelProperty({ example: {name: 'Common Error', message: 'You made a mistake!', stack: `{line: 500, err: "Bug"}`} })
    @IsNotEmpty()
    readonly error: Error;

    @ApiModelProperty({ example: 1})
    @ToInt()
    readonly user_id: number;

    @ApiModelProperty({ example: `https://chartman.zbay.xyz/login`})
    @IsNotEmpty()
    @IsString()
    readonly url: string;

  }
