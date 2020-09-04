import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PageMemberComponent } from './page-member.component';

describe('PageMemberComponent', () => {
  let component: PageMemberComponent;
  let fixture: ComponentFixture<PageMemberComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PageMemberComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PageMemberComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
