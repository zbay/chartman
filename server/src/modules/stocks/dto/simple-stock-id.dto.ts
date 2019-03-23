import { ApiModelProperty } from '@nestjs/swagger';

import { ToInt } from 'class-sanitizer';
import { IsNotEmpty } from 'class-validator';

export class SimpleStockIdDTO {

    @ApiModelProperty({ example: 1})
    @ToInt()
    @IsNotEmpty()
    readonly stock_id: number;

  }
