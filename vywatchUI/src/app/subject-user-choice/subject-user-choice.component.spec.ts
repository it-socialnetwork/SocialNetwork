import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SubjectUserChoiceComponent } from './subject-user-choice.component';

describe('SubjectUserChoiceComponent', () => {
  let component: SubjectUserChoiceComponent;
  let fixture: ComponentFixture<SubjectUserChoiceComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SubjectUserChoiceComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SubjectUserChoiceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
