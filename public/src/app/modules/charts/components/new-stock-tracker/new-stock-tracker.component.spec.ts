import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NewStockTrackerComponent } from './new-stock-tracker.component';

describe('NewStockTrackerComponent', () => {
  let component: NewStockTrackerComponent;
  let fixture: ComponentFixture<NewStockTrackerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NewStockTrackerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NewStockTrackerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
