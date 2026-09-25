-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: WHERE (filtro simple)
-- Tabla usada: track_raw (cargada en exercises/02-musical-track-database-csv.sql)
-- ============================================================================

-- Problema: quiero ver solo las canciones con una calificación (rating)
-- de 5 estrellas — las que más me gustan.

SELECT title, artist, rating
FROM track_raw
WHERE rating = 5;
