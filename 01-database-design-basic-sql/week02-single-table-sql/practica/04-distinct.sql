-- ============================================================================
-- Práctica — Semana 2 (Single Table SQL)
-- Tema: DISTINCT (eliminar duplicados)
-- Tabla usada: track_raw
-- ============================================================================

-- Problema: track_raw tiene una fila por canción, así que un mismo álbum
-- aparece repetido tantas veces como canciones tenga. Quiero la lista de
-- álbumes únicos, sin repeticiones.

SELECT DISTINCT album
FROM track_raw
ORDER BY album;
