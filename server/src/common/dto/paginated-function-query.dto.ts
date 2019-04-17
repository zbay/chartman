import { ApiModelProperty } from '@nestjs/swagger';

import { IsString, IsOptional } from 'class-validator';
import { Trim } from 'class-sanitizer';

import { ColumnSortType } from '@common/enums/column-sort-type.enum';
import { OrderDirection } from '@shared/enums/order-direction.enum';

export class PaginatedFunctionQueryDTO {

    @ApiModelProperty({ example: `fn_get_my_stocks` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly function: string;

    @ApiModelProperty({ example: `a` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly cursor_point: string;

    @ApiModelProperty({ example: `1, 2` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly function_params: string;

    @ApiModelProperty({ example: `symbol` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly ordr_by_col: string;

    @ApiModelProperty({ example: ColumnSortType.TEXT })
    @IsOptional()
    @IsString()
    @Trim()
    readonly order_by_col_type: ColumnSortType;

    @ApiModelProperty({ example: OrderDirection.ASC })
    @IsOptional()
    @IsString()
    @Trim()
    readonly order_direction: string;

    @ApiModelProperty({ example: `100` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly per_page: string;

    @ApiModelProperty({ example: `1=1` })
    @IsOptional()
    @IsString()
    @Trim()
    readonly where_condition: string;
  }
