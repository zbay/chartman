import { Test, TestingModule } from '@nestjs/testing';
import { PostgresConnectionService } from './postgres.connection.service';

describe('PostgresService', () => {
  let service: PostgresConnectionService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PostgresConnectionService],
    }).compile();

    service = module.get<PostgresConnectionService>(PostgresConnectionService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
