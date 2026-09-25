# Changelog

Registro cronológico del avance en el curso.

## 2026-09-22

- Creación del repositorio y estructura inicial del proyecto.
- Investigación y documentación del syllabus completo (4 cursos, 16 módulos) directamente desde Coursera.
- Definición de la estructura de carpetas: notas y ejercicios por semana/módulo, dentro de cada uno de los 4 cursos.
- Apuntes de contenido para week01-introduction-to-sql y `resources/referencias.md` con fuentes recomendadas.
- `resources/instalacion-y-conexion-psql.md`: guía de instalación del cliente psql y conexión al servidor del curso, para Linux Mint.
- Completados los Graded App Items "Initial Database Setup" y "Making Our First Tables" (check verde) de week01. "Inserting Some Data into a Table" ejecutado, pendiente confirmar check.
- Definida la convención de `.sql` en `exercises/` (numeración por orden del módulo, header sin credenciales) y documentada en el README. Se agregó `.gitignore` para evitar subir credenciales al repo.
- `resources/comandos-psql.md`: referencia de meta-comandos de psql por categoría (conexión, exploración de tablas, formato de salida, archivos, historial).
- Enlazado el material oficial en PDF del curso (Weeks 1-2 y Weeks 3-4) desde `01-database-design-basic-sql/notes.md` y cada semana correspondiente. Pendiente: colocar los 2 PDF físicamente en `01-database-design-basic-sql/` (ver nota en el chat sobre el sandbox).

## 2026-09-25

- Semana 1 (Introduction to SQL) marcada como completada en `01-database-design-basic-sql/notes.md`.
- Inicio de Semana 2 (Single Table SQL): apuntes de contenido agregados a `week02-single-table-sql/notes.md`.
- Completado el quiz "Single Table SQL" y el Graded App Item "SERIAL fields / Auto Increment" (check verde) — tabla `automagic` con `id SERIAL` (sin PRIMARY KEY, no lo pedía el enunciado), `name VARCHAR(32) NOT NULL`, `height FLOAT NOT NULL`.
- Documentado "Musical Track Database (CSV)": convención de carpeta `exercises/data/` (no versionada, ver `.gitignore`) para datasets descargados, script de carga `track_raw` vía `\copy`. Pendiente confirmar check verde en Coursera.
- Nueva convención `practica/` (ejercicios propios, no graded, con solución incluida) documentada en el README. Primera tanda para Semana 2 sobre `track_raw`: WHERE simple y compuesto, ORDER BY, DISTINCT, LIMIT (top N), y un adelanto de GROUP BY del Curso 2.
- **Semana 2 (Single Table SQL) completada.** Confirmado check verde en "Musical Track Database (CSV)". Progreso del Curso 1 marcado en `01-database-design-basic-sql/notes.md`: 2/4 semanas. Sigue Semana 3 — One-To-Many Data Models.
