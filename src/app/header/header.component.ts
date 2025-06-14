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

  closeMenus() {
    this.showUserMenu = false;
    this.showNotificaciones = false;
  }

  // Obtener notificaciones del usuario
  cargarNotificaciones() {
    const userId = localStorage.getItem('userId');
    if (userId) {
      this.http.get<any[]>(`http://localhost:3001/api/notificaciones/${userId}`)
        .subscribe(data => this.notificaciones = data);
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