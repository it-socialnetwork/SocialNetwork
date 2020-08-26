import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TestAjaxComponent } from './test-ajax.component';
import { $ } from 'protractor';

describe('TestAjaxComponent', () => {
  let component: TestAjaxComponent;
  let fixture: ComponentFixture<TestAjaxComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TestAjaxComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    
    fixture = TestBed.createComponent(TestAjaxComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
    
    
    

  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
  
});
