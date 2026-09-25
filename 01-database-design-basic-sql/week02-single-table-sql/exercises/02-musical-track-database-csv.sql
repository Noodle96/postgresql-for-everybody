-- ============================================================================
-- Curso 1 — Database Design and Basic SQL in PostgreSQL
-- Semana 2 — Single Table SQL
-- Graded App Item: Musical Track Database (CSV)
-- Fecha: 2026-09-25
-- Conexión: psql -h pg.pg4e.com -p 5432 -U <tu_usuario> -d <tu_basededatos>
-- ============================================================================
-- Objetivo: cargar una librería de iTunes (CSV) en una tabla plana
-- (track_raw), como base para el modelado many-to-one que se verá en
-- semanas siguientes (tracks -> álbumes).

-- Paso 0 (fuera de psql, en la terminal): descargar el CSV en una carpeta
-- dedicada, y lanzar psql DESDE esa misma carpeta (\copy usa rutas
-- relativas al directorio donde arrancó el cliente, no al servidor):
--
--   mkdir -p exercises/data && cd exercises/data
--   wget https://www.pg4e.com/tools/sql/library.csv
--   psql -h pg.pg4e.com -p 5432 -U <tu_usuario> -d <tu_basededatos>
--
-- (el archivo library.csv no se versiona en este repo — ver .gitignore,
-- se puede volver a descargar con el wget de arriba)

DROP TABLE IF EXISTS track_raw;

CREATE TABLE track_raw(
    title TEXT,
    artist TEXT,
    album TEXT,
    count INTEGER,
    rating INTEGER,
    len INTEGER
);

-- Carga del CSV. Ruta relativa: solo funciona si psql se lanzó desde
-- exercises/data/ (opción usada acá). Si psql se abre desde otra carpeta,
-- hay que usar la ruta absoluta al archivo en su lugar.
\copy track_raw(title,artist,album,count,rating,len) FROM 'library.csv' WITH DELIMITER ',' CSV;

-- Verificación: el autograder corre exactamente esta query y compara
-- el resultado contra el esperado.
SELECT title, album FROM track_raw ORDER BY title LIMIT 3;

-- Resultado esperado (y obtenido):
-- title                          | album
-- -------------------------------|----------------------------------
-- A Boy Named Sue (live)         | The Legend Of Johnny Cash
-- A Brief History of Packets     | Computing Conversations
-- Aguas De Marco                 | Natural Wonders Music Sampler 1999

-- Nota: si se vuelve a correr este script (reintentos), limpiar antes con
-- DELETE FROM track_raw; para no duplicar filas — el enunciado lo advierte
-- explícitamente. El DROP TABLE IF EXISTS de arriba ya cubre este caso
-- cuando se corre el script completo desde cero.

-- Estado: CSV descargado y cargado en track_raw (opción A: psql lanzado
-- desde exercises/data/), 2026-09-25. Confirmado que track_raw tiene datos
-- reales (se usa como base para practica/ de esta semana).
-- Resultado: "Check Answer" -> verde. Módulo 2 completado, 2026-09-25.
