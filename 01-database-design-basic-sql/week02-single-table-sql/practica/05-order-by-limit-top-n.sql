-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: ORDER BY + LIMIT (top N)
-- Tabla usada: track_raw
-- ============================================================================

-- Problema: quiero solo el top 5 de canciones más reproducidas, no la
-- lista completa ordenada (como en el ejercicio 03). ORDER BY define el
-- criterio, LIMIT corta cuántas filas te quedas.

SELECT title, artist, count
FROM track_raw
ORDER BY count DESC
LIMIT 5;
