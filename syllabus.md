# Syllabus — PostgreSQL for Everybody Specialization

**Universidad:** University of Michigan
**Instructor:** Charles Russell Severance ([Dr. Chuck](https://www.coursera.org/instructor/drchuck)) — Clinical Professor of Information, School of Information, University of Michigan
**Plataforma:** Coursera (incluido en Coursera Plus)
**Idioma:** Inglés, con doblaje AI y subtítulos en ~23-24 idiomas (incluido español)
**Nivel:** Intermedio
**Prerequisito:** Las dos primeras partes de la especialización *Python for Everybody*, o conocimiento equivalente de Python
**Duración:** 4 cursos, cada uno con 4 módulos/semanas de contenido, a ritmo propio (~10h/semana recomendadas)
**Créditos universitarios:** No otorga créditos, sí certificado profesional compartible

## Descripción general

"SQL: From Basic to Advanced." A lo largo de los 4 cursos se aprende a usar PostgreSQL explorando desde el diseño de bases de datos hasta la arquitectura y el despliegue, comparando enfoques SQL y NoSQL. Los assignments usan un entorno de autograding propio (psql, PythonAnywhere, DBeaver).

---

## Curso 1 — Database Design and Basic SQL in PostgreSQL
**14 horas · 4 módulos · 4 assignments**

Historia del diseño de bases de datos y uso de SQL en PostgreSQL. CRUD, modelado de datos, relaciones uno-a-muchos y muchos-a-muchos.

- **Módulo 1 — Introduction to SQL** (6h): historia de las bases de datos relacionales, estándar SQL (Elizabeth Fong), arquitectura SQL, psql, DBeaver, CRUD básico.
- **Módulo 2 — Single Table SQL** (3h): comandos psql, tipos de datos, keys e índices, INSERT INTO / WHERE / ORDER BY, campos SERIAL.
- **Módulo 3 — One-To-Many Data Models** (2h): diseño relacional, primary/foreign/logical keys, normalización, JOIN.
- **Módulo 4 — Many-To-Many Data Models** (2h): relaciones muchos-a-muchos, normalización avanzada, tablas de conexión.

## Curso 2 — Intermediate PostgreSQL
**16 horas · 4 módulos · 3 assignments**

SQL más allá de CRUD básico: agregación, transacciones, parsing de CSV, texto e índices.

- **Módulo 1 — SQL Techniques** (7h): ALTER TABLE, fechas, DISTINCT/GROUP BY, subqueries, concurrencia y transacciones, stored procedures.
- **Módulo 2 — Using SQL Techniques** (3h): normalización de tablas desde archivos CSV, ajuste de esquemas con ALTER TABLE.
- **Módulo 3 — Text in PostgreSQL** (4h): character sets, hashing, índices de texto y técnicas de indexación.
- **Módulo 4 — Regular Expressions** (2h): construcción y uso de expresiones regulares para filtrar filas.

## Curso 3 — JSON and Natural Language Processing in PostgreSQL
**16 horas · 4 módulos · 2 assignments**

Índices invertidos, texto natural, JSON, integración con Python y APIs.

- **Módulo 1 — Natural Language** (6h): allocación de filas en bloques, detalles de implementación de índices, construcción de un inverted index con SQL puro.
- **Módulo 2 — Inverted Indexes with PostgreSQL** (3h): índices GIN, funciones ts_vector() y ts_query().
- **Módulo 3 — Python and PostgreSQL** (4h): conexión Python-PostgreSQL, proyecto de archivo de correos (mail archive), ranking de resultados de búsqueda.
- **Módulo 4 — JSON and PostgreSQL** (3h): JSON en PostgreSQL, consumo de APIs externas (Star Wars API, PokéAPI) y almacenamiento en columnas JSON.

## Curso 4 — Database Architecture and NoSQL at Scale with Deno
**11 horas · 4 módulos · 2 assignments**

Arquitectura de PostgreSQL, comparación SQL vs NoSQL, ACID vs BASE, y despliegue de un almacén NoSQL (Deno KV) a escala.

- **Módulo 1 — Scaling Databases** (3h): comparación SQL vs NoSQL, escalamiento de bases de datos relacionales, mini-paper.
- **Módulo 2 — Cloud Scale Applications** (3h): arquitecturas ACID vs BASE, evolución de aplicaciones cloud (primera y segunda generación), mini-paper.
- **Módulo 3 — DenoKV** (5h): arquitectura de Deno KV basada en B-Trees, CRUD en Deno KV, despliegue en infraestructura global de Deno, cliente KVAdmin.py.
- **Módulo 4 — Wrap Up** (6min): cierre del curso.

---

## Notas de investigación

- El curso 4 originalmente se describía como comparación con Elasticsearch/NoSQL; en la versión vigente (2026) el motor NoSQL de referencia usado en la práctica es **Deno KV**, no Elasticsearch.
- Cada curso usa una base de datos distinta; el entorno de conexión se reconfigura en el primer módulo de cada curso.
- El curso 1 recomienda 1 semana de estudio, el 2 y 3 recomiendan 2 semanas, y el 4 recomienda 1 semana (a ritmo de ~10h/semana), pero cada uno mantiene 4 módulos de contenido.

**Fuente:** [coursera.org/specializations/postgresql-for-everybody](https://www.coursera.org/specializations/postgresql-for-everybody) (consultado 2026-09-22)
