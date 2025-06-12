import { TestBed } from '@angular/core/testing';

import { HistorialPagosService } from './historial-pagos.service';

describe('HistorialPagosService', () => {
  let service: HistorialPagosService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HistorialPagosService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
