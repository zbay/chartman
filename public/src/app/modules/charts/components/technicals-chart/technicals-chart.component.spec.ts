import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TechnicalsChartComponent } from './technicals-chart.component';

describe('TechnicalsChartComponent', () => {
  let component: TechnicalsChartComponent;
  let fixture: ComponentFixture<TechnicalsChartComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TechnicalsChartComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TechnicalsChartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
