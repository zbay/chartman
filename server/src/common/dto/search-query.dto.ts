import { ApiModelProperty } from '@nestjs/swagger';

import { IsString } from 'class-validator';
import { Trim } from 'class-sanitizer';

export class SimpleSearchQueryDTO {

    @ApiModelProperty({ example: `Finan` })
    @IsString()
    @Trim()
    readonly searchQuery: string;

  }
