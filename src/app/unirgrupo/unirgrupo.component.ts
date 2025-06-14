import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-unirgrupo',
  imports: [RouterModule],
  templateUrl: './unirgrupo.component.html',
  styleUrl: './unirgrupo.component.css'
})

export class UnirGrupoComponent implements OnInit {

  gruposDisponibles: any[] = [];

  constructor(private http: HttpClient, private router: Router) {}

  ngOnInit(): void {
    this.obtenerGruposDisponibles(); // Cargar los grupos disponibles
  }

  obtenerGruposDisponibles(): void {
    const usuarioId = localStorage.getItem('userId');
    if (!usuarioId) {
        alert('Usuario no identificado. Por favor, inicia sesión.');
        return;
    }

    this.http.get<any[]>(`http://192.168.50.202:3001/gruposdisponibles/${usuarioId}`)
      .subscribe(
        data => {
          this.gruposDisponibles = data.map(grupo => ({
            id: grupo.id_grupo_suscripcion,
            name: grupo.nombre_grupo,
            serviceType: grupo.nombre_servicio,
            maxUsers: grupo.num_integrantes,
            currentUsers: grupo.currentUsers,
            costPerUser: grupo.costo_total / grupo.num_integrantes,
            paymentPolicy: grupo.fecha_inicio && grupo.fecha_vencimiento
              ? this.calcularPoliticaPago(grupo.fecha_inicio, grupo.fecha_vencimiento)
              : ''
          }));
        },
        error => {
          console.error('Error al obtener los grupos', error);
        }
      );
}


   unirseAGrupo(grupoId: number): void {
    const usuarioId = localStorage.getItem('userId');
    if (!usuarioId) {
      alert('Debes iniciar sesión para unirte a un grupo');
      this.router.navigate(['/login']);
      return;
    }

    this.http.post<any>('http://192.168.50.202:3001/api/grupos/unirse', {
      groupId: grupoId,
      userId: usuarioId
    })
    .subscribe(
      response => {
        alert('Te has unido al grupo exitosamente');
        this.obtenerGruposDisponibles();
      },
      error => {
        alert('No se pudo unir al grupo: ' + error.error.message);
      }
    );
  }
    
    actualizarDisponibilidad(groupId: number) {
      this.http.put<any>(`http://192.168.50.202:3001/api/servicio-suscripcion/actualizar/${groupId}`, {})
        .subscribe(
          (response) => {
            console.log(response.message, 'Disponibilidad:', response.disponibilidad);
            alert(`La disponibilidad del grupo ${groupId} se actualizó a: ${response.disponibilidad}`);
          },
          (error) => {
            console.error('Error al actualizar la disponibilidad:', error);
            alert('Error al verificar o actualizar la disponibilidad.');
          }
        );
    }
    
    calcularPoliticaPago(fechaInicio: string, fechaVencimiento: string): string {
      // Lógica para calcular la política de pago basada en las fechas
      // Por ejemplo, si la fecha de inicio es este mes, el pago es mensual
      // Si la fecha de vencimiento es dentro de 3 meses, puede ser trimestral, etc.
      // Retorna una cadena que describa la política de pago
      return 'monthly'; // Placeholder, implementar lógica real
    }
}