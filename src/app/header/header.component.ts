import { Component, OnInit, HostListener } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-header',
  imports: [RouterModule, DatePipe],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent implements OnInit {

  userName: string = '';
  showUserMenu = false;
  showNotificaciones = false;
  notificaciones: any[] = [];
  showPagosPopup = false;
  historialPagos: any[] = [];
  datePipe = new DatePipe('es-MX');

  constructor(private router: Router, private http: HttpClient) { }

  ngOnInit(): void {
    this.userName = localStorage.getItem('username') || '';
  }

  isLoggedIn(): boolean {
    return localStorage.getItem('username') !== null;
  }

  logout(): void {
    localStorage.removeItem('username');
    localStorage.removeItem('authToken');
    this.closeMenus();
    this.router.navigate(['/login']);
  }

  toggleUserMenu() {
    this.showUserMenu = !this.showUserMenu;
    if (this.showUserMenu) this.showNotificaciones = false;
  }

  toggleNotificaciones() {
    this.showNotificaciones = !this.showNotificaciones;
    if (this.showNotificaciones) {
      this.showUserMenu = false;
      this.cargarNotificaciones();
    }
  }

  togglePagosPopup() {
    this.showPagosPopup = !this.showPagosPopup;
    if (this.showPagosPopup) {
      this.showNotificaciones = false;
      this.showUserMenu = false;
      this.cargarHistorialPagos();
    }
  }

  closeMenus() {
    this.showUserMenu = false;
    this.showNotificaciones = false;
  }

  // Formatea la fecha a dd/MM/yyyy
  formatFecha(fecha: string): string {
    if (!fecha) return '';
    return this.datePipe.transform(fecha, 'dd/MM/yyyy') || '';
  }

  // Obtener notificaciones del usuario
  cargarNotificaciones() {
    const userId = localStorage.getItem('userId');
    if (userId) {
      this.http.get<any[]>(`http://localhost:3001/api/notificaciones/${userId}`)
        .subscribe(data => {
          // Formatear la fecha de cada notificación
          this.notificaciones = data.map(n => ({
            ...n,
            fecha_envio_formateada: this.formatFecha(n.fecha_envio)
          }));
        });
    }
  }

  // Marcar una notificación como leída
  marcarComoLeida(id_notificacion: number) {
    this.http.put(`http://localhost:3001/api/notificaciones/${id_notificacion}/leida`, {})
      .subscribe(() => {
        const notif = this.notificaciones.find(n => n.id_notificacion === id_notificacion);
        if (notif) notif.estado = 'leida';
      });
  }

  // Eliminar una notificación
  eliminarNotificacion(id_notificacion: number) {
    this.http.put(`http://localhost:3001/api/notificaciones/${id_notificacion}/eliminar`, {})
      .subscribe(() => {
        // Opcional: quitar del array localmente para respuesta inmediata
        const notif = this.notificaciones.find(n => n.id_notificacion === id_notificacion);
        if (notif) notif.estado = 'eliminada';
      });
  }

  // Cargar historial de pagos del usuario
  cargarHistorialPagos() {
    const userId = localStorage.getItem('userId');
    if (userId) {
      this.http.get<any[]>(`http://localhost:3001/api/historial_pagos?userId=${userId}`)
        .subscribe(pagos => {
          // Formatear la fecha de cada pago
          this.historialPagos = pagos.map(p => ({
            ...p,
            fecha_pago_formateada: this.formatFecha(p.fecha_pago)
          }));
        });
    }
  }

  // Cerrar menús al hacer clic fuera
  @HostListener('document:click', ['$event'])
  onDocumentClick(event: Event) {
    const target = event.target as HTMLElement;
    const userMenuContainer = target.closest('.user-menu-container');
    const notificacionesPopup = target.closest('.notificaciones-popup');

    if (!userMenuContainer && this.showUserMenu) {
      this.showUserMenu = false;
    }
    if (!notificacionesPopup && this.showNotificaciones) {
      this.showNotificaciones = false;
    }
  }

  trackById(index: number, item: any) {
    return item.id_notificacion;
  }
}