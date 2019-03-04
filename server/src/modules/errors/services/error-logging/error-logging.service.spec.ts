import { Test, TestingModule } from '@nestjs/testing';
import { ErrorLoggingService } from './error-logging.service';

describe('ErrorLoggingService', () => {
  let service: ErrorLoggingService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ErrorLoggingService],
    }).compile();

    service = module.get<ErrorLoggingService>(ErrorLoggingService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
