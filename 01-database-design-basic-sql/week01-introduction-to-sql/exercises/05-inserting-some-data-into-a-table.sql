-- ============================================================================
-- Curso 1 — Database Design and Basic SQL in PostgreSQL
-- Semana 1 — Introduction to SQL
-- Graded App Item: Inserting Some Data into a Table
-- Fecha: 2026-09-22
-- Conexión: psql -h pg.pg4e.com -p 5432 -U <tu_usuario> -d <tu_basededatos>
-- ============================================================================
-- Objetivo: crear una tabla simple e insertar un conjunto de filas exacto.
-- El autograder valida que la tabla contenga SOLO estas filas, así que hay
-- que limpiar cualquier dato de intentos anteriores antes de insertar.

CREATE TABLE ages (
    name VARCHAR(128),
    age INTEGER
);

-- Importante: dejar la tabla vacía antes de insertar (por si ya tenía datos
-- de un intento previo del autograder).
DELETE FROM ages;

INSERT INTO ages (name, age) VALUES ('Ceiron', 22);
INSERT INTO ages (name, age) VALUES ('Hawaa', 29);
INSERT INTO ages (name, age) VALUES ('Qin', 25);
INSERT INTO ages (name, age) VALUES ('Tegen', 20);

-- Verificación rápida:
-- SELECT * FROM ages;

-- Resultado: ejecutado 2026-09-22. Verificar check verde en Coursera
-- (ver resources/instalacion-y-conexion-psql.md sobre el delay del check).
