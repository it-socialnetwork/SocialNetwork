import { TestBed } from '@angular/core/testing';

import { UsersubjectService } from './usersubject.service';

describe('UsersubjectService', () => {
  let service: UsersubjectService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UsersubjectService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
