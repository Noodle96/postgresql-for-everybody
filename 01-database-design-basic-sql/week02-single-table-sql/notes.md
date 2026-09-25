# Semana 2 — Single Table SQL

**Curso:** Database Design and Basic SQL in PostgreSQL · Módulo 2 (3h)

## Contenido del módulo

- Comandos psql más comunes
- Tipos de datos en PostgreSQL
- Keys e índices
- INSERT INTO, WHERE, ORDER BY
- Campos SERIAL / auto increment

## Objetivos de aprendizaje (oficiales)

1. Recordar y utilizar los comandos psql más comunes.
2. Crear una base de datos usando la línea de comandos.
3. Utilizar comandos SQL comunes, incluyendo `INSERT INTO`, `WHERE` y `ORDER BY`.

## Apuntes

### Comandos psql para trabajar con bases de datos y tablas

Más allá de conectarte (visto en la semana 1), esta semana se trata de moverte dentro de una base de datos ya conectada: crear bases de datos desde la terminal (`createdb`), listar qué tienes disponible (`\l`), cambiar de base (`\c`) e inspeccionar tablas (`\dt`, `\d tabla`). La idea es que puedas montar y explorar un esquema completo sin salir nunca de la terminal.

### Tipos de datos en PostgreSQL

PostgreSQL es más estricto con los tipos que una hoja de cálculo o un CSV: cada columna declara un tipo (`VARCHAR`, `INTEGER`, `TIMESTAMP`, `BOOLEAN`, etc.) y el motor rechaza cualquier dato que no calce. Esto es justamente lo que evita la corrupción silenciosa de datos que se mencionaba en la semana 1 al comparar bases relacionales con archivos planos — el tipo es la primera capa de validación, antes de llegar a keys o constraints.

### Keys e índices

Una **key** (llave) identifica de forma única una fila — típicamente la `PRIMARY KEY`. Un **índice** es una estructura auxiliar que acelera búsquedas sobre una columna (parecido al índice de un libro: en vez de leer todo, saltas directo a la página). PostgreSQL crea automáticamente un índice para cada `PRIMARY KEY`, pero se pueden crear índices adicionales sobre cualquier columna que se consulte seguido — el costo es que cada índice extra ralentiza un poco las escrituras (`INSERT`/`UPDATE`), porque también hay que actualizar el índice.

### INSERT INTO, WHERE, ORDER BY

Estos tres son el corazón del `SELECT`/`INSERT` cotidiano: `INSERT INTO tabla (col1, col2) VALUES (...)` agrega filas; `WHERE` filtra cuáles filas te interesan de una consulta (sin él, cualquier `SELECT` o `UPDATE` afecta a toda la tabla — cuidado especial con `DELETE FROM tabla` sin `WHERE`); `ORDER BY` controla el orden de los resultados, algo que SQL no garantiza por defecto (el orden físico de almacenamiento no es el orden de lectura a menos que lo pidas explícitamente).

### Campos SERIAL / auto increment

`SERIAL` es un atajo de PostgreSQL para crear una columna entera que se autoincrementa en cada `INSERT` (típicamente usada como `PRIMARY KEY`, como se vio en `pg4e_debug` y `pg4e_result` de la semana 1). Por debajo, `SERIAL` crea una secuencia (`SEQUENCE`) asociada a la columna — no es un tipo de dato en sí, es azúcar sintáctico sobre `INTEGER` + `DEFAULT nextval(...)`.

### Para profundizar

Ver [`resources/referencias.md`](../../resources/referencias.md) y el material oficial: [Weeks 1 and 2 — Introduction to SQL (PDF)](../weeks-1-2-introduction-to-sql.pdf).


## Material oficial

- [Weeks 1 and 2 — Introduction to SQL (PDF)](../weeks-1-2-introduction-to-sql.pdf) — slides oficiales del curso, esta semana está en la segunda mitad del documento.

## Ejercicios / app items

- [x] Single Table SQL (quiz de preguntas) — completado 2026-09-25
- [x] [SERIAL fields / Auto Increment](./exercises/01-serial-fields-auto-increment.sql) — check verde, 2026-09-25
- [x] [Musical Track Database (CSV)](./exercises/02-musical-track-database-csv.sql) — check verde, 2026-09-25

## Práctica adicional

- [`practica/01-where-filtro-simple.sql`](./practica/01-where-filtro-simple.sql)
- [`practica/02-where-multiples-condiciones.sql`](./practica/02-where-multiples-condiciones.sql)
- [`practica/03-order-by.sql`](./practica/03-order-by.sql)
- [`practica/04-distinct.sql`](./practica/04-distinct.sql)
- [`practica/05-order-by-limit-top-n.sql`](./practica/05-order-by-limit-top-n.sql)
- [`practica/06-group-by-preview.sql`](./practica/06-group-by-preview.sql) — adelanto de Curso 2, no es temario de esta semana

## Dudas / temas para repasar

