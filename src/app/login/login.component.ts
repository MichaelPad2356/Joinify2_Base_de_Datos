import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-login',
  imports: [RouterModule, FormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {
  loginData = {
    email: '',
    password: ''
  };

  errorMessage: string = ''; // Variable para almacenar el mensaje de error
  constructor(private http: HttpClient, private router: Router) {}

  // Lógica para manejar el envío de los datos de login
  onLoginSubmit(): void {
    const url = 'http://192.168.68.68:3001/login';  // Cambia a tu endpoint de login

    this.http.post<{ userId: number, userName: string }>(url, this.loginData).subscribe(
      (response) => {
        if (response && response.userId) {
          localStorage.setItem('userId', response.userId.toString());
          localStorage.setItem('username', response.userName); // Aquí guardas el nombre real

          this.router.navigate(['/home']).then(() => {
            window.location.reload();
          });
        } else {
          console.log('Login fallido: Respuesta inesperada del servidor');
          alert('Error en el login. Por favor, verifica tus credenciales.');
        }
      },
      (error) => {
        this.showError('Usuario o contraseña incorrectos. Intenta nuevamente.');
      }
    );
  }
// Método para mostrar el mensaje de error y ocultarlo automáticamente
showError(message: string) {
  this.errorMessage = message; // Establecer el mensaje de error
  setTimeout(() => {
    this.errorMessage = ''; // Limpiar el mensaje después de 5 segundos
  }, 2000); // Tiempo en milisegundos
}

}


