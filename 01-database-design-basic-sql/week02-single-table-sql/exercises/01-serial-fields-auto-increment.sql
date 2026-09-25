-- ============================================================================
-- Curso 1 — Database Design and Basic SQL in PostgreSQL
-- Semana 2 — Single Table SQL
-- Graded App Item: SERIAL fields / Auto Increment
-- Fecha: 2026-09-25
-- Conexión: psql -h pg.pg4e.com -p 5432 -U <tu_usuario> -d <tu_basededatos>
-- ============================================================================
-- Objetivo: crear una tabla "automagic" con:
--   - id: campo serial autoincremental
--   - name: hasta 32 caracteres, obligatorio
--   - height: número de punto flotante, obligatorio
-- El autograder inserta filas de prueba para validar el esquema.
--
-- Nota: el enunciado NO pide que "id" sea PRIMARY KEY, así que
-- deliberadamente se dejó solo como SERIAL (columna autoincremental),
-- sin restricción de llave primaria.

DROP TABLE IF EXISTS automagic;

CREATE TABLE automagic (
  id SERIAL,
  name VARCHAR(32) NOT NULL,
  height FLOAT NOT NULL
);

-- Por qué VARCHAR(32) y no CHAR(32): CHAR(n) rellena con espacios en blanco
-- hasta completar los n caracteres, lo que puede romper comparaciones
-- exactas de string al leer el valor de vuelta. VARCHAR(32) guarda el
-- valor tal cual, solo limita el máximo — más seguro para lo que valida
-- el autograder.

-- Verificación rápida:
-- \d automagic

-- Resultado: "Check Answer" -> verde. Completado 2026-09-25.
