import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NavButtonVertComponent } from './nav-button-vert.component';

describe('NavButtonVertComponent', () => {
  let component: NavButtonVertComponent;
  let fixture: ComponentFixture<NavButtonVertComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NavButtonVertComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NavButtonVertComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
