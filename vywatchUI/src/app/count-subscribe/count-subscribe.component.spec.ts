import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CountSubscribeComponent } from './count-subscribe.component';

describe('CountSubscribeComponent', () => {
  let component: CountSubscribeComponent;
  let fixture: ComponentFixture<CountSubscribeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CountSubscribeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CountSubscribeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
