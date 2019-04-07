import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IndexlessPaginatorComponent } from './indexless-paginator.component';

describe('IndexlessPaginatorComponent', () => {
  let component: IndexlessPaginatorComponent;
  let fixture: ComponentFixture<IndexlessPaginatorComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IndexlessPaginatorComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IndexlessPaginatorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
