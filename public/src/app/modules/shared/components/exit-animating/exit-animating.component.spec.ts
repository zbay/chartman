import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ExitAnimatingComponent } from './exit-animating.component';

describe('ExitAnimatingComponent', () => {
  let component: ExitAnimatingComponent;
  let fixture: ComponentFixture<ExitAnimatingComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ExitAnimatingComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ExitAnimatingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
