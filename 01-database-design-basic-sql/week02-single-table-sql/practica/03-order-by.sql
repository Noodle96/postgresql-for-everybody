-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: ORDER BY (ascendente / descendente)
-- Tabla usada: track_raw
-- ============================================================================

-- Problema: quiero ver todas las canciones ordenadas de la más reproducida
-- a la menos reproducida (count de mayor a menor). Recuerda: SQL no
-- garantiza ningún orden si no lo pides explícitamente con ORDER BY.

SELECT title, artist, count
FROM track_raw
ORDER BY count DESC;

-- Variante: mismo criterio pero ascendente (las que menos escuché primero).
-- Por defecto ORDER BY es ascendente (ASC), no hace falta escribirlo.

-- SELECT title, artist, count
-- FROM track_raw
-- ORDER BY count;
