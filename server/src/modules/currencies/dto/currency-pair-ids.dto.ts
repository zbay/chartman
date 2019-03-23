import { ApiModelProperty } from '@nestjs/swagger';

import { ToInt } from 'class-sanitizer';
import { IsNotEmpty } from 'class-validator';

export class CurrencyPairIdsDTO {

    @ApiModelProperty({ example: 1 })
    @ToInt()
    @IsNotEmpty()
    readonly from_id: number;

    @ApiModelProperty({ example: 2 })
    @ToInt()
    @IsNotEmpty()
    readonly to_id: number;

  }
