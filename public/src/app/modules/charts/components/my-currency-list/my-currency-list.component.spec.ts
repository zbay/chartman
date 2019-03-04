import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MyCurrencyListComponent } from './my-currency-list.component';

describe('MyCurrencyListComponent', () => {
  let component: MyCurrencyListComponent;
  let fixture: ComponentFixture<MyCurrencyListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MyCurrencyListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MyCurrencyListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
