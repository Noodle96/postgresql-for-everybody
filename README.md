# PostgreSQL for Everybody

Repositorio de avance del curso **PostgreSQL for Everybody Specialization** (Coursera, University of Michigan — Instructor: Charles Russell Severance / Dr. Chuck).

Notas, ejercicios y proyectos a medida que avanzo por los 4 cursos de la especialización. Curso tomado en la modalidad de doblaje AI al español (Coursera Plus).

## Contenido del repositorio

- [`syllabus.md`](./syllabus.md) — temario completo de los 4 cursos (módulos, contenidos, evaluaciones).
- [`notes.md`](./notes.md) — índice general de avance y notas de alto nivel.
- [`CHANGELOG.md`](./CHANGELOG.md) — registro cronológico de progreso.
- `cheatsheets/` — comandos y snippets SQL reutilizables.
- `resources/` — setup de entorno (psql/Docker), datasets, enlaces externos.
- `01-database-design-basic-sql/` a `04-database-architecture-nosql-deno/` — una carpeta por curso, subdividida por semana/módulo, con notas y ejercicios.

## Convención de `exercises/`

Cada carpeta `weekNN-.../exercises/` guarda un archivo `.sql` por cada Graded App Item que involucre SQL real, numerado según el orden en que aparece en el módulo: `0N-nombre-del-item.sql` (ej. `04-making-our-first-tables.sql`). Cada archivo lleva un encabezado con curso, semana, nombre del item, fecha y el comando de conexión **sin credenciales reales** (esas solo viven en la app del curso, nunca en este repo — ver `.gitignore`). Los items que no producen SQL propio (como "Initial Database Setup", que solo crea la base de datos vía el tool) quedan documentados como una línea en el `notes.md` de la semana, sin `.sql` vacío. El checklist de "Ejercicios / app items" de cada `notes.md` enlaza a estos archivos y anota fecha + si el check de Coursera ya quedó en verde.

## Cursos de la especialización

1. Database Design and Basic SQL in PostgreSQL
2. Intermediate PostgreSQL
3. JSON and Natural Language Processing in PostgreSQL
4. Database Architecture and NoSQL at Scale with Deno

## Prerequisitos

Conocimientos básicos de Python (equivalente a las dos primeras partes de Python for Everybody).
