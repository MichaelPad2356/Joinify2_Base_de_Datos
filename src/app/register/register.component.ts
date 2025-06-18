import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-register',
  imports: [RouterModule, FormsModule, HttpClientModule],
  templateUrl: './register.component.html',
  styleUrl: './register.component.css'
})
export class RegisterComponent {
  user = {
    fullname: '',
    email: '',
    password: ''
  };

  isFormValid(): boolean {
    return !!(
      this.user.fullname.trim() && 
      this.user.email.trim() && 
      this.user.password.trim() && 
      this.user.fullname.length >= 2 && 
      this.user.password.length >= 6
    );
  }

  constructor(private http: HttpClient, private router: Router) {}

  onSubmit() {
   
      // Lógica para enviar el formulario
      const userData = {
        nombre: this.user.fullname,
        email: this.user.email,
        password: this.user.password
      };
  
    
   
    

    /*this.http.post('http://192.168.50.20:3000/usuario', userData)
      .subscribe(
        (response: any) => {
          console.log('Registro exitoso', response);
          // Redirigir al usuario a una página de éxito o login
          this.router.navigate(['/login']); // Esto es solo un ejemplo
          
        },
        (error) => {
          console.error('Error al registrar el usuario', error);
          // Aquí puedes manejar errores si es necesario
        }
      );*/


      this.http.post('http://192.168.50.203:3001/usuario', userData)

      .subscribe(
        (response: any) => {
          console.log('Registro exitoso', response);
          // Redirigir al usuario a una página de éxito o login
          this.router.navigate(['/login']); // Esto es solo un ejemplo
          
        },
        (error) => {
          console.error('Error al registrar el usuario', error);
          // Aquí puedes manejar errores si es necesario
        }
      );
      
  }
}