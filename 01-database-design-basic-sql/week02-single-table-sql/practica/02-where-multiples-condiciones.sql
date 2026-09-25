-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: WHERE con múltiples condiciones (AND / OR)
-- Tabla usada: track_raw
-- ============================================================================

-- Problema: quiero canciones que estén bien calificadas (rating >= 4) Y que
-- además haya escuchado varias veces (count > 10) — mis favoritas reales,
-- no solo las que califiqué alto una vez.

SELECT title, artist, rating, count
FROM track_raw
WHERE rating >= 4 AND count > 10;
