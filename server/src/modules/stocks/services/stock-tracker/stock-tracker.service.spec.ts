import { Test, TestingModule } from '@nestjs/testing';
import { StockTrackerService } from './stock-tracker.service';

describe('StockTrackerService', () => {
  let service: StockTrackerService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [StockTrackerService],
    }).compile();

    service = module.get<StockTrackerService>(StockTrackerService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
