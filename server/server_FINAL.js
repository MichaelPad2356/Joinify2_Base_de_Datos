require('dotenv').config(); // Cargar variables de entorno

const express = require('express');
const app = express();
const cors = require('cors');
const Stripe = require('stripe');
const mysql = require('mysql2/promise');
const bcrypt = require('bcrypt');

// Configurar conexión a MySQL
const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'Maicgio323-2',
    database: 'joinify_db',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

const stripe = new Stripe(process.env.STRIPE_SECRET_KEY);
const secretKey = 'mi_clave_secreta_12345_ghjlo_hyt';

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Función para encriptar contraseñas
async function encryptPassword(password) {
    const saltRounds = 10;
    return await bcrypt.hash(password, saltRounds);
}

// Mensajes permitidos
const mensajesPermitidos = [
  "Recibiste pago.",
  "Nuevo integrante añadido.",
  "Grupo lleno.",
  "Tu pago fue recibido.",
  "Se ha actualizado el grupo.",
  "Se elimino el grupo.",
  "Pago pendiente."
];

function esMensajePermitido(mensaje) {
  return mensajesPermitidos.includes(mensaje);
}

// Endpoints

app.get('/usuarios', async (req, res) => {
    try {
        const [usuarios] = await pool.query('SELECT id_usuario, nombre, email, fecha_registro FROM usuario');
        res.json(usuarios);
    } catch (err) {
        res.status(500).json({ message: 'Error al obtener los usuarios' });
    }
});

app.post('/usuario', async (req, res) => {
    const { nombre, email, password } = req.body;
    try {
        const hashedPassword = await encryptPassword(password);
        const [result] = await pool.query(
            'INSERT INTO usuario (nombre, email, contraseña, fecha_registro) VALUES (?, ?, ?, ?)',
            [nombre, email, hashedPassword, new Date()]
        );
        res.status(201).json({ message: 'Usuario creado correctamente' });
    } catch (err) {
        res.status(500).json({ message: 'Error al crear el usuario' });
    }
});

app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    try {
        const [usuarios] = await pool.query('SELECT * FROM usuario WHERE email = ?', [email]);
        if (usuarios.length === 0) return res.status(401).json({ message: 'Usuario no encontrado' });

        const usuario = usuarios[0];
        const match = await bcrypt.compare(password, usuario.contraseña);
        if (match) {
            res.json({ userId: usuario.id_usuario, userName: usuario.nombre, message: 'Login exitoso' });
        } else {
            res.status(401).json({ message: 'Credenciales incorrectas' });
        }
    } catch (err) {
        res.status(500).json({ message: 'Error en el login' });
    }
});

app.post('/api/grupos/crear', async (req, res) => {
    const { name, serviceType, maxUsers, costPerUser, paymentPolicy, userId } = req.body;
    if (!name || !serviceType || !maxUsers || !costPerUser || !userId) {
        return res.status(400).json({ message: 'Todos los campos son obligatorios' });
    }
    try {
        const [servicio] = await pool.query('SELECT id_servicio, nombre_servicio FROM servicio_streaming WHERE nombre_servicio = ?', [serviceType]);
        if (servicio.length === 0) return res.status(400).json({ message: 'Servicio no encontrado' });

        const id_servicio = servicio[0].id_servicio;
        const nombre_servicio = servicio[0].nombre_servicio;
        const fecha_creacion = new Date();
        const fecha_inicio = new Date();
        const fecha_vencimiento = new Date();
        fecha_vencimiento.setMonth(fecha_inicio.getMonth() + (paymentPolicy === 'annual' ? 12 : 1));
        const costo_total = costPerUser * maxUsers;

        const [result] = await pool.query(
            `INSERT INTO grupo_suscripcion 
            (nombre_grupo, fecha_creacion, estado_grupo, num_integrantes, id_servicio, costo_total, fecha_inicio, fecha_vencimiento, id_creador)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
            [name, fecha_creacion, 'Activo', maxUsers, id_servicio, costo_total, fecha_inicio, fecha_vencimiento, userId]
        );
        const id_grupo_suscripcion = result.insertId;

        await pool.query(
            'INSERT INTO usuario_grupo (id_usuario, id_grupo_suscripcion, rol) VALUES (?, ?, ?)',
            [userId, id_grupo_suscripcion, 'Admin']
        );

        res.status(201).json({ message: 'Grupo creado exitosamente', id_grupo_suscripcion });
    } catch (err) {
        res.status(500).json({ message: 'Error al crear el grupo' });
    }
});

app.get('/api/grupos/usuario', async (req, res) => {
    const id_usuario = req.query.id_usuario;
    if (!id_usuario) return res.status(400).json({ error: 'ID de usuario no proporcionado' });
    try {
        const [grupos] = await pool.query(`
            SELECT gs.*, ug.rol, ss.nombre_servicio,
            (SELECT COUNT(*) FROM usuario_grupo ug2 WHERE ug2.id_grupo_suscripcion = gs.id_grupo_suscripcion) AS currentUsers
            FROM grupo_suscripcion gs
            JOIN usuario_grupo ug ON gs.id_grupo_suscripcion = ug.id_grupo_suscripcion
            JOIN servicio_streaming ss ON gs.id_servicio = ss.id_servicio
            WHERE ug.id_usuario = ?`, [id_usuario]);
        res.json(grupos);
    } catch (err) {
        res.status(500).json({ message: 'Error al procesar la solicitud' });
    }
});

app.post('/api/grupos/unirse', async (req, res) => {
    const { groupId, userId } = req.body;
    if (!groupId || !userId) return res.status(400).json({ message: 'Datos faltantes' });

    try {
        const [existe] = await pool.query('SELECT * FROM usuario_grupo WHERE id_usuario = ? AND id_grupo_suscripcion = ?', [userId, groupId]);
        if (existe.length > 0) return res.status(400).json({ message: 'Ya eres miembro de este grupo' });

        const [insertResult] = await pool.query(
            'INSERT INTO usuario_grupo (id_usuario, id_grupo_suscripcion, rol) VALUES (?, ?, ?)',
            [userId, groupId, 'Miembro']
        );

        const [grupo] = await pool.query('SELECT id_creador, num_integrantes FROM grupo_suscripcion WHERE id_grupo_suscripcion = ?', [groupId]);
        const adminId = grupo[0]?.id_creador;
        const maxUsers = grupo[0]?.num_integrantes;

        if (adminId && adminId !== userId) {
            await pool.query('INSERT INTO notificacion (id_usuario, mensaje, fecha_envio, estado) VALUES (?, ?, CURDATE(), ?)', [adminId, 'Nuevo integrante añadido.', 'pendiente']);
        }

        const [usuariosActuales] = await pool.query('SELECT COUNT(*) AS total FROM usuario_grupo WHERE id_grupo_suscripcion = ?', [groupId]);
        const totalUsuarios = usuariosActuales[0]?.total;

        if (totalUsuarios >= maxUsers && adminId) {
            await pool.query('INSERT INTO notificacion (id_usuario, mensaje, fecha_envio, estado) VALUES (?, ?, CURDATE(), ?)', [adminId, 'Grupo lleno.', 'pendiente']);
        }

        res.status(200).json({ message: 'Te has unido al grupo correctamente' });
    } catch (err) {
        res.status(500).json({ message: 'Error al unirse al grupo' });
    }
});

app.get('/gruposdisponibles/:id_usuario', async (req, res) => {
    const id_usuario = req.params.id_usuario;
    if (!id_usuario) return res.status(400).json({ error: 'ID de usuario no proporcionado' });
    try {
        const [grupos] = await pool.query(`
            SELECT gs.*, ss.nombre_servicio,
            (SELECT COUNT(*) FROM usuario_grupo ug WHERE ug.id_grupo_suscripcion = gs.id_grupo_suscripcion) AS currentUsers
            FROM grupo_suscripcion gs
            JOIN servicio_streaming ss ON gs.id_servicio = ss.id_servicio
            WHERE gs.estado_grupo = 'Activo'
            AND gs.id_grupo_suscripcion NOT IN (
                SELECT id_grupo_suscripcion FROM usuario_grupo WHERE id_usuario = ?
            )
            AND (SELECT COUNT(*) FROM usuario_grupo ug WHERE ug.id_grupo_suscripcion = gs.id_grupo_suscripcion) < gs.num_integrantes`, [id_usuario]);
        res.json(grupos);
    } catch (err) {
        res.status(500).json({ message: 'Error al procesar la solicitud' });
    }
});

app.get('/api/notificaciones/vencimientos', async (req, res) => {
    try {
        const [grupos] = await pool.query('SELECT * FROM grupo_suscripcion');
        const [usuarioGrupo] = await pool.query('SELECT * FROM usuario_grupo');
        const hoy = new Date();
        const nuevasNotificaciones = [];

        grupos.forEach((grupo) => {
            const fechaVencimiento = new Date(grupo.fecha_vencimiento);
            const diasRestantes = Math.ceil((fechaVencimiento - hoy) / (1000 * 60 * 60 * 24));
            if (diasRestantes <= 1 && diasRestantes >= 0) {
                const usuariosEnGrupo = usuarioGrupo.filter(ug => ug.id_grupo_suscripcion === grupo.id_grupo_suscripcion);
                usuariosEnGrupo.forEach((relacion) => {
                    nuevasNotificaciones.push({
                        userId: relacion.id_usuario,
                        mensaje: `Tu pago para el grupo "${grupo.nombre_grupo}" vence en ${diasRestantes} día(s).`
                    });
                });
            }
        });
        res.json(nuevasNotificaciones);
    } catch (err) {
        res.status(500).json({ message: 'Error al procesar las notificaciones' });
    }
});

app.post('/api/pagos/simular', async (req, res) => {
    const { userId, groupId, amount } = req.body;
    try {
        const paymentIntent = await stripe.paymentIntents.create({
            amount: amount * 100,
            currency: 'usd',
            description: `Pago del grupo ${groupId} por el usuario ${userId}`
        });
        res.status(200).json({ message: 'Transacción de pago exitosa', clientSecret: paymentIntent.client_secret });
    } catch (err) {
        res.status(500).json({ message: 'Error al realizar el pago' });
    }
});

app.post('/api/pagos/confirmar', async (req, res) => {
    try {
        const { userId, groupId, monto } = req.body;
        if (!userId || !groupId || !monto) return res.status(400).json({ message: 'Faltan datos obligatorios' });

        const [pagoResult] = await pool.query('INSERT INTO pago (id_usuario, monto, fecha_pago) VALUES (?, ?, CURDATE())', [userId, monto]);
        const id_pago = pagoResult.insertId;

        await pool.query('INSERT INTO historial_pagos (id_pago, id_grupo_suscripcion) VALUES (?, ?)', [id_pago, groupId]);

        const mensajeUsuario = 'Tu pago fue recibido.';
        if (esMensajePermitido(mensajeUsuario)) {
            await pool.query('INSERT INTO notificacion (id_usuario, mensaje, fecha_envio, estado) VALUES (?, ?, CURDATE(), ?)', [userId, mensajeUsuario, 'pendiente']);
        }

        const [adminRows] = await pool.query('SELECT id_creador FROM grupo_suscripcion WHERE id_grupo_suscripcion = ?', [groupId]);
        const adminId = adminRows[0]?.id_creador;

        if (adminId && adminId !== userId) {
            const mensajeAdmin = 'Recibiste pago.';
            if (esMensajePermitido(mensajeAdmin)) {
                await pool.query('INSERT INTO notificacion (id_usuario, mensaje, fecha_envio, estado) VALUES (?, ?, CURDATE(), ?)', [adminId, mensajeAdmin, 'pendiente']);
            }
        }

        res.json({ message: 'Pago confirmado y notificaciones enviadas.' });
    } catch (err) {
        console.error(err);
        res.status(400).json({ message: err.message || 'Error al confirmar el pago' });
    }
});

// ✅ Endpoint para mostrar notificaciones personales
app.get('/api/notificaciones/:userId', async (req, res) => {
    const userId = req.params.userId;
    try {
        const [notificaciones] = await pool.query(
            `SELECT id_notificacion, mensaje, fecha_envio, estado 
             FROM notificacion 
             WHERE id_usuario = ? AND estado != 'eliminada'
             ORDER BY fecha_envio DESC`, [userId]
        );
        res.json(notificaciones);
    } catch (err) {
        console.error('Error al obtener notificaciones:', err);
        res.status(500).json({ message: 'Error al obtener notificaciones' });
    }
});

// Marcar notificación como leída
app.put('/api/notificaciones/:id_notificacion/leida', async (req, res) => {
  const { id_notificacion } = req.params;
  try {
    await pool.query(
      'UPDATE notificacion SET estado = ? WHERE id_notificacion = ?',
      ['leida', id_notificacion]
    );
    res.json({ message: 'Notificación marcada como leída' });
  } catch (err) {
    res.status(500).json({ message: 'Error al marcar como leída' });
  }
});

// Eliminar notificación (estado = 'eliminada')
app.put('/api/notificaciones/:id_notificacion/eliminar', async (req, res) => {
  const { id_notificacion } = req.params;
  try {
    await pool.query(
      'UPDATE notificacion SET estado = ? WHERE id_notificacion = ?',
      ['eliminada', id_notificacion]
    );
    res.json({ message: 'Notificación eliminada' });
  } catch (err) {
    res.status(500).json({ message: 'Error al eliminar la notificación' });
  }
});

// Historial de pagos por usuario
app.get('/api/historial_pagos', async (req, res) => {
  const { userId } = req.query;
  if (!userId) {
    return res.status(400).json({ message: 'userId requerido' });
  }
  try {
    const [pagos] = await pool.query(
      `SELECT hp.id_historial_pago, hp.id_pago, hp.id_grupo_suscripcion, p.monto, p.fecha_pago
       FROM historial_pagos hp
       JOIN pago p ON hp.id_pago = p.id_pago
       WHERE p.id_usuario = ?
       ORDER BY p.fecha_pago DESC`,
      [userId]
    );
    res.json(pagos);
  } catch (err) {
    res.status(500).json({ message: 'Error al obtener el historial de pagos' });
  }
});

// ✅ Función para notificar a todos los miembros del grupo
async function notificarMiembrosGrupo(pool, grupoId, mensaje) {
  const [miembros] = await pool.query(
    'SELECT id_usuario FROM usuario_grupo WHERE id_grupo_suscripcion = ?',
    [grupoId]
  );
  for (const miembro of miembros) {
    await pool.query(
      'INSERT INTO notificacion (id_usuario, mensaje, fecha_envio, estado) VALUES (?, ?, CURDATE(), ?)',
      [miembro.id_usuario, mensaje, 'pendiente']
    );
  }
}

// ✅ Endpoint para activar grupo y notificar a miembros
app.put('/api/grupos/activar/:id', async (req, res) => {
  const grupoId = req.params.id;
  try {
    await pool.query('UPDATE grupo_suscripcion SET estado_grupo = "Activo" WHERE id_grupo_suscripcion = ?', [grupoId]);
    const mensaje = "Se ha actualizado el grupo.";
    await notificarMiembrosGrupo(pool, grupoId, mensaje);
    res.json({ message: 'Grupo activado correctamente' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Error al activar el grupo' });
  }
});

// ✅ Endpoint para inactivar grupo y notificar a miembros
app.put('/api/grupos/inactivar/:id', async (req, res) => {
  const grupoId = req.params.id;
  try {
    await pool.query('UPDATE grupo_suscripcion SET estado_grupo = "Inactivo" WHERE id_grupo_suscripcion = ?', [grupoId]);
    const mensaje = "Se ha actualizado el grupo.";
    await notificarMiembrosGrupo(pool, grupoId, mensaje);
    res.json({ message: 'Grupo inactivado correctamente' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Error al inactivar el grupo' });
  }
});

// Activar grupo (solo Admin puede hacerlo)
app.put('/api/grupos/activar/:groupId', async (req, res) => {
    const { groupId } = req.params;
    try {
        await pool.query(
            'UPDATE grupo_suscripcion SET estado_grupo = ? WHERE id_grupo_suscripcion = ?',
            ['Activo', groupId]
        );
        res.json({ message: 'Grupo activado correctamente' });
    } catch (err) {
        res.status(500).json({ message: 'Error al activar el grupo' });
    }
});

// Obtener todos los servicios de streaming
app.get('/api/servicios', async (req, res) => {
    try {
        const [servicios] = await pool.query('SELECT * FROM servicio_streaming');
        res.json(servicios);
    } catch (err) {
        res.status(500).json({ message: 'Error al obtener los servicios' });
    }
});

// Salir de un grupo
app.delete('/api/grupos/salir/:groupId/:userId', async (req, res) => {
    const { groupId, userId } = req.params;
    try {
        await pool.query('DELETE FROM usuario_grupo WHERE id_usuario = ? AND id_grupo_suscripcion = ?', [userId, groupId]);
        res.status(200).json({ message: 'Has salido del grupo correctamente.' });
    } catch (err) {
        res.status(500).json({ message: 'Error al procesar la solicitud.' });
    }
});

// Dar de baja un grupo (solo si la fecha de vencimiento ya pasó)
app.delete('/api/grupos/baja/:groupId', async (req, res) => {
    const { groupId } = req.params;
    try {
        const [grupos] = await pool.query('SELECT * FROM grupo_suscripcion WHERE id_grupo_suscripcion = ?', [groupId]);
        if (grupos.length === 0) {
            return res.status(404).json({ message: 'Grupo no encontrado' });
        }
        const grupo = grupos[0];
        const fechaVencimiento = new Date(grupo.fecha_vencimiento);
        const fechaActual = new Date();
        if (fechaActual < fechaVencimiento) {
            return res.status(400).json({
                message: `No se puede dar de baja el grupo hasta la fecha de vencimiento: ${fechaVencimiento.toISOString()}`
            });
        }
        await pool.query('DELETE FROM usuario_grupo WHERE id_grupo_suscripcion = ?', [groupId]);
        await pool.query('DELETE FROM grupo_suscripcion WHERE id_grupo_suscripcion = ?', [groupId]);

        res.status(200).json({
            message: `El grupo ${groupId} y todas sus relaciones han sido eliminados correctamente`
        });
    } catch (err) {
        res.status(500).json({ message: 'Error al procesar la solicitud' });
    }
});

// ✅ Iniciar servidor
app.listen(3001, '0.0.0.0', () => {
    console.log('Servidor corriendo en http://localhost:3001');
});