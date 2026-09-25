-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: GROUP BY + funciones de agregación (ADELANTO)
-- Tabla usada: track_raw
-- ============================================================================
-- Nota: GROUP BY es contenido oficial del Curso 2 (Intermediate PostgreSQL,
-- Módulo 1), no de esta semana. Se incluye acá como adelanto porque se
-- pidió explícitamente, pero no es parte del temario de la Semana 2.

-- Problema: quiero saber cuántas canciones tengo de cada álbum, y no fila
-- por fila (como con WHERE/ORDER BY) sino un resumen: un renglón por álbum.

SELECT album, COUNT(*) AS cantidad_canciones
FROM track_raw
GROUP BY album
ORDER BY cantidad_canciones DESC;

-- Variante: además del conteo, el rating promedio por álbum.

-- SELECT album, COUNT(*) AS cantidad_canciones, AVG(rating) AS rating_promedio
-- FROM track_raw
-- GROUP BY album
-- ORDER BY rating_promedio DESC;
