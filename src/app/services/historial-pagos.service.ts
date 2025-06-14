import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HistorialPago } from '../models/historial-pago.model';

@Injectable({
  providedIn: 'root'
})
export class HistorialPagosService {
  private readonly apiUrl = 'http://192.168.50.202:3001/api/historial_pagos';

  constructor(private http: HttpClient) {}

  getAll(): Observable<HistorialPago[]> {
    return this.http.get<HistorialPago[]>(this.apiUrl);
  }

  getByGrupo(grupoId: number): Observable<HistorialPago[]> {
    return this.http.get<HistorialPago[]>(`${this.apiUrl}?grupoId=${grupoId}`);
  }

  getByUsuario(userId: number): Observable<HistorialPago[]> {
    return this.http.get<HistorialPago[]>(
      `${this.apiUrl}?userId=${userId}`
    );
  }
}
