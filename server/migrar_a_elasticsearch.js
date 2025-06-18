const mysql = require('mysql2/promise');
const { Client } = require('@elastic/elasticsearch');

async function migrarTabla(tabla, indice) {
    // Conexión a MySQL
    const pool = await mysql.createPool({
        host: 'localhost',
        user: 'root',
        password: 'Maicgio323-2',
        database: 'joinify_db'
    });

    // Conexión a Elasticsearch (ajusta la IP si tu VM es diferente)
    const esClient = new Client({ node: 'http://192.168.50.242:9200' });

    // Obtén los datos de la tabla
    let rows;
    if (tabla === 'grupo_suscripcion') {
        // Cambia la consulta para incluir el nombre del servicio
        [rows] = await pool.query(`
            SELECT gs.*, s.nombre_servicio
            FROM grupo_suscripcion gs
            JOIN servicio_streaming s ON gs.id_servicio = s.id_servicio
        `);
    } else {
        [rows] = await pool.query(`SELECT * FROM ${tabla}`);
    }

    // Borra el índice si existe (opcional)
    try {
        await esClient.indices.delete({ index: indice });
    } catch (err) {
        if (err.meta && err.meta.body && err.meta.body.error && err.meta.body.error.type === 'index_not_found_exception') {
            // El índice no existe, no hay problema
            console.log(`Índice ${indice} no existe, se creará uno nuevo.`);
        } else {
            throw err; // Otro error, detén la ejecución
        }
    }

    // Crea el índice
    await esClient.indices.create({ index: indice });

    // Inserta cada registro en Elasticsearch
    for (const row of rows) {
        await esClient.index({
            index: indice,
            id: row.id_grupo_suscripcion ? row.id_grupo_suscripcion.toString() : undefined,
            document: row
        });
    }

    console.log(`Migración de ${tabla} a ${indice} completada`);
    await pool.end();
}

// Migrar las tablas principales
(async () => {
    await migrarTabla('usuario', 'usuario');
    await migrarTabla('grupo_suscripcion', 'grupo_suscripcion');
    await migrarTabla('usuario_grupo', 'usuario_grupo');
})();