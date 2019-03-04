import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NewCurrencyPairTrackerComponent } from './new-currency-pair-tracker.component';

describe('NewCurrencyPairTrackerComponent', () => {
  let component: NewCurrencyPairTrackerComponent;
  let fixture: ComponentFixture<NewCurrencyPairTrackerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NewCurrencyPairTrackerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NewCurrencyPairTrackerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
