import { Component, OnInit } from '@angular/core';
import { Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-header',
  imports: [RouterModule],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent implements OnInit {

  userName: string = '';

  constructor(private router: Router) { }

  ngOnInit(): void {
    // Recuperar el nombre del usuario desde localStorage si está logueado
    this.userName = localStorage.getItem('username') || '';
  }

  // Verifica si el usuario está logueado
  isLoggedIn(): boolean {
    return localStorage.getItem('username') !== null;
  }

  // Acción de Logout
  logout(): void {
    // Eliminar los datos del usuario de localStorage
    localStorage.removeItem('username');
    localStorage.removeItem('authToken'); // Si usas un token para autenticar al usuario

    // Redirigir a la página de login
    this.router.navigate(['/login']);
  }
}