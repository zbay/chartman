import { ApiModelProperty } from '@nestjs/swagger';

import { ToInt } from 'class-sanitizer';
import { IsNotEmpty, IsString } from 'class-validator';

export class CreateStockTrackerDTO {

    @ApiModelProperty({ example: 1})
    @ToInt()
    readonly id: number;

    @ApiModelProperty({ example: `MSFT`})
    @IsNotEmpty()
    @IsString()
    readonly symbol: string;

  }
