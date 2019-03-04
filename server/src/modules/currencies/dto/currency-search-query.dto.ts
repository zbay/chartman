import { ApiModelProperty } from '@nestjs/swagger';

import { IsString } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class CurrencySearchQueryDTO {

    @ApiModelProperty({ example: `Dollar` })
    @IsString()
    @Trim()
    readonly searchQuery: string;

    @ApiModelProperty({ example: `Fiat,Crypto` })
    @IsString()
    @Trim()
    readonly searchFilter: string;

  }
