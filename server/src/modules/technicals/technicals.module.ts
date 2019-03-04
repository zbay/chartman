import { Module } from '@nestjs/common';

import { TechnicalsCalculationService } from './services/technicals-calculation/technicals-calculation.service';

@Module({
    exports: [TechnicalsCalculationService],
    providers: [TechnicalsCalculationService]
})
export class TechnicalsModule {}
