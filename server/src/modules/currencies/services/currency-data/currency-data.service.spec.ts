import { Test, TestingModule } from '@nestjs/testing';
import { CurrencyDataService } from './currency-data.service';

describe('CurrencyDataService', () => {
  let service: CurrencyDataService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CurrencyDataService],
    }).compile();

    service = module.get<CurrencyDataService>(CurrencyDataService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
