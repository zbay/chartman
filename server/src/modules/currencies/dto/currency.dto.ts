import { ApiModelProperty } from '@nestjs/swagger';

export class CurrencyDTO {

    @ApiModelProperty({ example: 'BTC'})
    readonly code: string;

    @ApiModelProperty({ example: 234})
    readonly id: number;
  }
