import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NavbarVertComponent } from './navbar-vert.component';

describe('NavbarVertComponent', () => {
  let component: NavbarVertComponent;
  let fixture: ComponentFixture<NavbarVertComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NavbarVertComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NavbarVertComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
