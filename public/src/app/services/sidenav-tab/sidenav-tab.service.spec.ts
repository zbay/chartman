import { TestBed } from '@angular/core/testing';

import { SidenavTabService } from './sidenav-tab.service';

describe('SidenavTabService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SidenavTabService = TestBed.get(SidenavTabService);
    expect(service).toBeTruthy();
  });
});
