import { TestBed, async, inject } from '@angular/core/testing';

import { ExitAnimationGuard } from './exit-animation.guard';

describe('ExitAnimationGuard', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ExitAnimationGuard]
    });
  });

  it('should ...', inject([ExitAnimationGuard], (guard: ExitAnimationGuard) => {
    expect(guard).toBeTruthy();
  }));
});
