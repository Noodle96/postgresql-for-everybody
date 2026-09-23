-- ============================================================================
-- Curso 1 — Database Design and Basic SQL in PostgreSQL
-- Semana 1 — Introduction to SQL
-- Graded App Item: Making Our First Tables
-- Fecha: 2026-09-22
-- Conexión: psql -h pg.pg4e.com -p 5432 -U <tu_usuario> -d <tu_basededatos>
-- ============================================================================
-- Objetivo: crear las tablas que usa el autograder del curso para
-- comunicarse con el estudiante durante las siguientes tareas.

-- Tabla de debug: aquí el autograder registra las queries que ejecuta al
-- calificar cada assignment. Se limpia al inicio de cada intento nuevo.
CREATE TABLE pg4e_debug (
    id SERIAL,
    query VARCHAR(4096),
    result VARCHAR(4096),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

-- Tabla de resultados (opcional, no obligatoria): guarda copia de las
-- calificaciones recibidas por assignment. Si prefieres no guardar
-- información personal de terceros en esta tabla, puedes omitirla —
-- el curso funciona igual, las notas también se envían directo a Coursera.
CREATE TABLE pg4e_result (
    id SERIAL,
    link_id INTEGER UNIQUE,
    score FLOAT,
    title VARCHAR(4096),
    note VARCHAR(4096),
    debug_log VARCHAR(8192),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
    );

-- Verificación rápida tras crear las tablas:
-- \dt

-- Nota: además de estas dos, el autograder crea automáticamente una tabla
-- pg4e_meta para pasar información entre assignments. No tocarla ni
-- modificar sus datos.

-- Para revisar qué hizo el autograder después de correrlo:
-- SELECT query, result, created_at FROM pg4e_debug;

-- Resultado: "Check Answer" -> verde. Completado 2026-09-22.
