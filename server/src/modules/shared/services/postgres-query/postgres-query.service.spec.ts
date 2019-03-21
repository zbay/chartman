import { Test, TestingModule } from '@nestjs/testing';
import { PostgresQueryService } from './postgres-query.service';

describe('PostgresQueryService', () => {
  let service: PostgresQueryService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PostgresQueryService],
    }).compile();

    service = module.get<PostgresQueryService>(PostgresQueryService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
