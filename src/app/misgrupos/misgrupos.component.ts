import { Component, OnInit, OnDestroy } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { loadStripe } from '@stripe/stripe-js';
import { HistorialPago } from '../models/historial-pago.model';
import { HistorialPagosService } from '../services/historial-pagos.service';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-misgrupos',
  imports: [CommonModule],
  templateUrl: './misgrupos.component.html',
  styleUrls: ['./misgrupos.component.css']
})
export class MisGruposComponent implements OnInit, OnDestroy {
  grupos: any[] = [];
  notificaciones: any[] = [];
  errorMessage: string = '';
  stripe: any;
  elements: any;
  card: any;
  notificacionesInterval: any;

  historialPagos: HistorialPago[] = [];
  pagosError = '';
today: any;

  constructor(
    private http: HttpClient,
    private historialSrv: HistorialPagosService
  ) {}

  ngOnInit(): void {
    this.cargarHistorialPagos();

    const usuarioId = localStorage.getItem('userId');
    if (!usuarioId) {
      this.errorMessage = 'Por favor, inicia sesión para ver tus grupos.';
      return;
    }

    this.http.get<any[]>(`http://192.168.50.202:3001/api/grupos/usuario?id_usuario=${usuarioId}`)
      .subscribe(
        (grupos) => {
          this.grupos = grupos.map(grupo => ({
            id: grupo.id_grupo_suscripcion,
            name: grupo.nombre_grupo,
            serviceType: grupo.nombre_servicio,
            maxUsers: grupo.num_integrantes,
            currentUsers: grupo.currentUsers || 1,
            costPerUser: grupo.costo_total && grupo.num_integrantes ? (grupo.costo_total / grupo.num_integrantes).toFixed(2) : '',
            paymentPolicy: grupo.fecha_inicio && grupo.fecha_vencimiento
              ? this.calcularPoliticaPago(grupo.fecha_inicio, grupo.fecha_vencimiento)
              : '',
            fechaLimite: grupo.fecha_vencimiento || '',
            rol: grupo.rol || '',
            isCreatedByUser: grupo.rol === 'Admin',
            isJoinedByUser: grupo.rol === 'Miembro',
            estado_grupo: grupo.estado_grupo
          }));
        },
        (error) => {
          console.error('Error al obtener los grupos:', error);
          this.errorMessage = 'Error al cargar tus grupos. Intenta nuevamente más tarde.';
        }
      );

    this.http.get<any[]>(`http://192.168.50.202:3001/api/notificaciones/vencimientos`)
      .subscribe(
        (notificaciones) => { 
          this.notificaciones = notificaciones.filter(n => n.userId === parseInt(usuarioId || '0'));
          this.notificaciones.forEach((notificacion, index) => {
            setTimeout(() => {
              this.notificaciones.splice(index, 1);
            }, 5000);
          });
        },
        (error) => { 
          console.error('Error al obtener las notificaciones:', error); 
          this.errorMessage = 'Error al cargar tus notificaciones.'; 
        }
      );

    this.notificacionesInterval = setInterval(() => {
      this.http.get<any[]>(`http://192.168.50.202:3001/api/notificaciones/vencimientos`)
        .subscribe(
          (notificaciones) => { 
            this.notificaciones = notificaciones.filter(n => n.userId === parseInt(usuarioId || '0')); 
          },
          (error) => { 
            console.error('Error al obtener las notificaciones:', error); 
            this.errorMessage = 'Error al cargar tus notificaciones.'; 
          }
        );
    }, 60000);

    loadStripe('pk_test_51QTYY1KKAL9Zx73kVaH7pAwFyqaSPByJFrZCQKpfzLwRgE9WTWHx6lJxKfXkhK3dgOCBTFlmSGHjBUvtJJyOSM7r00PzjBxalJ')
      .then((stripe) => {
        if (stripe) {
          this.stripe = stripe;
          this.elements = stripe.elements();
          this.card = this.elements.create('card');
          this.card.mount('#card-element');
        } else {
          console.error('Stripe no se cargó correctamente');
        }
      })
      .catch((error) => {
        console.error('Error al cargar Stripe:', error);
      });
  }

  ngOnDestroy(): void {
    if (this.notificacionesInterval) {
      clearInterval(this.notificacionesInterval);
    }
  }

  private cargarHistorialPagos(): void {
    const userId = localStorage.getItem('userId');
    if (!userId) return;

    this.historialSrv.getByUsuario(+userId).subscribe({
      next: pagos => this.historialPagos = pagos,
      error: _ => this.pagosError = 'Error al cargar el historial de pagos'
    });
  }

  simularPago(grupoId: number, monto: number): void {
    const userId = localStorage.getItem('userId');
    if (!userId) {
      alert('No se ha encontrado un usuario logueado.');
      return;
    }

    this.http.post(`http://192.168.50.202:3001/api/pagos/simular`, {
      userId: userId,
      groupId: grupoId,
      amount: monto
    }).subscribe(
      (res: any) => {
        const { clientSecret } = res;
        this.confirmPayment(clientSecret);
      },
      (error) => { 
        console.error('Error en la simulación de pago:', error);
        alert('Hubo un problema al procesar la simulación. Inténtalo de nuevo.');
      }
    );
  }

  confirmPayment(clientSecret: string) {
    this.stripe.confirmCardPayment(clientSecret, {
      payment_method: {
        card: this.card,
        billing_details: {
          name: 'Nombre del Usuario',
        },
      },
    }).then((result: any) => {
      if (result.error) {
        console.error('Error al procesar la simulación:', result.error);
        alert('Hubo un error en la simulación del pago. Inténtalo de nuevo.');
      } else {
        if (result.paymentIntent.status === 'succeeded') {
          alert('Pago realizado con éxito!');
        }
      }
    });
  }

  darDeBajaGrupo(grupoId: number): void {
    const confirmacion = confirm('¿Estás seguro de que deseas dar de baja este grupo? Esta acción es irreversible.');
    if (!confirmacion) return;

    this.http.delete<any>(`http://192.168.50.202:3001/api/grupos/baja/${grupoId}`)
      .subscribe(
        response => {
          alert(`El grupo ha sido dado de baja. La página se recargará en 3 segundos.`);
          setTimeout(() => {
            window.location.reload();
          }, 3000);
        },
        error => {
          console.error('Error al dar de baja el grupo:', error);
          alert('Error al dar de baja el grupo: ' + error.error.message);
        }
      );
  }

  salirDelGrupo(grupoId: number): void {
    const userId = localStorage.getItem('userId');
    if (!userId) {
      alert('Debes iniciar sesión para salir de un grupo');
      return;
    }

    this.http.delete<any>(`http://192.168.50.202:3001/api/grupos/salir/${grupoId}/${userId}`)
      .subscribe(
        response => {
          alert('Has salido del grupo exitosamente');
          this.actualizarDisponibilidad(grupoId);
          setTimeout(() => {
            window.location.reload();
          }, 4000);
        },
        error => {
          console.error('Error al salir del grupo:', error);
          alert('No se pudo salir del grupo: ' + error.error.message);
        }
      );
  }

  actualizarDisponibilidad(groupId: number) {
    this.http.put<any>(`http://192.168.50.202:3001/api/servicio-suscripcion/actualizar/${groupId}`, {})
      .subscribe(
        (response) => {
          alert(`La disponibilidad del grupo ${groupId} se actualizó a: ${response.disponibilidad}`);
        },
        (error) => {
          console.error('Error al actualizar la disponibilidad:', error);
          alert('Error al verificar o actualizar la disponibilidad.');
        }
      );
  }

  calcularPoliticaPago(fechaInicio: string, fechaVencimiento: string): string {
    const inicio = new Date(fechaInicio);
    const fin = new Date(fechaVencimiento);
    const diff = (fin.getFullYear() - inicio.getFullYear()) * 12 + (fin.getMonth() - inicio.getMonth());
    return diff >= 11 ? 'Anual' : 'Mensual';
  }

  inactivarGrupo(grupoId: number): void {
    if (!confirm('¿Seguro que deseas inactivar este grupo?')) return;
    this.http.put<any>(`http://192.168.50.202:3001/api/grupos/inactivar/${grupoId}`, {})
      .subscribe(
        response => {
          alert('Grupo inactivado correctamente');
          window.location.reload();
        },
        error => {
          alert('Error al inactivar el grupo');
        }
      );
  }

  activarGrupo(grupoId: number): void {
    if (!confirm('¿Seguro que deseas activar este grupo?')) return;
    this.http.put<any>(`http://192.168.50.202:3001/api/grupos/activar/${grupoId}`, {})
      .subscribe(
        response => {
          alert('Grupo activado correctamente');
          window.location.reload();
        },
        error => {
          alert('Error al activar el grupo');
        }
      );
  }
}
