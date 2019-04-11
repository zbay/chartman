import { ApiModelProperty } from '@nestjs/swagger';

import { IsString, IsOptional } from 'class-validator';

import { OrderDirection } from '@shared/enums/order-direction.enum';

export class GetMyTrackersDTO {

    @ApiModelProperty({ example: `b`})
    @IsString()
    @IsOptional()
    readonly cursor_point: string;

    @ApiModelProperty({ example: `name`})
    @IsString()
    @IsOptional()
    readonly order_by_col: string;

    @ApiModelProperty({ example: `text`})
    @IsString()
    @IsOptional()
    readonly order_by_col_type: string;

    @ApiModelProperty({ example: `ASC`})
    @IsString()
    @IsOptional()
    readonly order_direction: OrderDirection;

    @ApiModelProperty({ example: `10`})
    @IsString()
    @IsOptional()
    readonly per_page: string;

    @ApiModelProperty({ example: 'Finan'})
    @IsString()
    @IsOptional()
    readonly search_filter: string;

  }
