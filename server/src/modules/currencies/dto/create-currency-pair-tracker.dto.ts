import { ApiModelProperty } from '@nestjs/swagger';

import { ValidateNested } from 'class-validator';
import { CurrencyDTO } from './currency.dto';

export class CreateCurrencyPairTrackerDTO {

    @ApiModelProperty()
    @ValidateNested()
    readonly from: CurrencyDTO;

    @ApiModelProperty()
    @ValidateNested()
    readonly to: CurrencyDTO;

  }
