import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-creaciongrupo',
  imports: [RouterModule, FormsModule, CommonModule], // Agregado CommonModule
  templateUrl: './creaciongrupo.component.html',
  styleUrl: './creaciongrupo.component.css'
})
export class CreaciongrupoComponent {
  groupData = {
    name: '',
    serviceType: '',
    maxUsers: null,
    costPerUser: 0,
    paymentPolicy: 'monthly'
  };

  serviceList: any[] = [];

  constructor(private http: HttpClient, private router: Router) {
    this.loadServices();
  }

  loadServices() {
    this.http.get<any[]>('http://192.168.1.70:3001/api/servicios').subscribe(
      data => {
        this.serviceList = data;
        console.log('Servicios cargados:', data); // Para debugging
      },
      error => console.error('Error al cargar servicios', error)
    );
  }

  onSubmit() {
    if (!this.groupData.name || !this.groupData.serviceType || !this.groupData.maxUsers || !this.groupData.costPerUser) {
      alert('Por favor, completa todos los campos.');
      return;
    }

    const userId = localStorage.getItem('userId');
    if (!userId) {
      alert('No se puede crear el grupo. El usuario no está logueado.');
      return;
    }

    const grupoConUsuario = {
      name: this.groupData.name,
      serviceType: this.groupData.serviceType,
      maxUsers: this.groupData.maxUsers,
      costPerUser: Number(this.groupData.costPerUser) || 0,
      paymentPolicy: this.groupData.paymentPolicy,
      userId: parseInt(userId, 10)
    };


    this.http.post<{ id_grupo_suscripcion: number }>('http://192.168.1.70:3001/api/grupos/crear', grupoConUsuario)

      .subscribe(
        (response) => {
          alert('Grupo creado exitosamente');
          this.router.navigate(['/unirgrupo']);
        },
        (error) => {
          alert('Hubo un error al crear el grupo.');
          console.error('Error:', error);
        }
      );
  }
}