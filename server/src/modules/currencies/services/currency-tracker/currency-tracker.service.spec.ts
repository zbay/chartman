import { Test, TestingModule } from '@nestjs/testing';
import { CurrencyTrackerService } from './currency-tracker.service';

describe('CurrencyTrackerService', () => {
  let service: CurrencyTrackerService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CurrencyTrackerService],
    }).compile();

    service = module.get<CurrencyTrackerService>(CurrencyTrackerService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
