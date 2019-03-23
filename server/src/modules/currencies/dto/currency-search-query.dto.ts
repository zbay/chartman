import { ApiModelProperty } from '@nestjs/swagger';

import { IsString } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class CurrencySearchQueryDTO {

    @ApiModelProperty({ example: `Dollar` })
    @IsString()
    @Trim()
    readonly search_query: string;

    @ApiModelProperty({ example: `Fiat,Crypto` })
    @IsString()
    @Trim()
    readonly search_filter: string;

  }
