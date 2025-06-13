import { Component, OnInit } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { DatePipe, CommonModule } from '@angular/common'; // <-- Agrega esto

@Component({
  selector: 'app-header',
  imports: [RouterModule, DatePipe, CommonModule], // <-- Agrega DatePipe y CommonModule aquí
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
        // Actualiza la lista localmente para reflejar el cambio
        const notif = this.notificaciones.find(n => n.id_notificacion === id_notificacion);
        if (notif) notif.estado = 'leida';
      });
  }
}