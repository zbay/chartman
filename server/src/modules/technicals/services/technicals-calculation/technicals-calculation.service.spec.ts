import { Test, TestingModule } from '@nestjs/testing';
import { TechnicalsCalculationService } from './technicals-calculation.service';

describe('TechnicalsCalculationService', () => {
  let service: TechnicalsCalculationService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [TechnicalsCalculationService],
    }).compile();

    service = module.get<TechnicalsCalculationService>(TechnicalsCalculationService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
