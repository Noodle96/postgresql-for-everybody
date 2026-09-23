# Semana 1 — Introduction to SQL

**Curso:** Database Design and Basic SQL in PostgreSQL · Módulo 1 (6h)

## Contenido del módulo

- Historia de las bases de datos relacionales
- Personas y organizaciones clave del estándar SQL (Elizabeth Fong)
- Arquitectura SQL
- psql y DBeaver para ejecutar comandos SQL
- CRUD básico (Create, Read, Update, Delete)

## Apuntes

### Historia de las bases de datos relacionales

Antes del modelo relacional, los sistemas usaban archivos planos o modelos jerárquicos/en red, donde la forma de acceder a los datos estaba atada a cómo se almacenaban físicamente. En 1970, Edgar F. Codd (investigador de IBM) publicó *"A Relational Model of Data for Large Shared Data Banks"*, proponiendo separar la estructura lógica de los datos (tablas con filas y columnas) de su almacenamiento físico. Esa idea — que los datos se puedan consultar declarativamente sin que el programador sepa cómo están guardados — es la base de todo motor SQL moderno, incluido PostgreSQL.

### El estándar SQL y Elizabeth Fong

SQL no nació como un único producto, sino como un estándar acordado entre fabricantes de bases de datos distintos (IBM, Oracle, etc.) para que el mismo lenguaje funcionara en cualquier motor. Elizabeth Fong, en el NIST (National Institute of Standards and Technology, EE.UU.), fue una de las figuras clave en la creación y mantenimiento de ese estándar (ANSI/ISO SQL) desde los años 80. Su trabajo es un buen recordatorio de que SQL es, ante todo, un contrato de interoperabilidad: el mismo `SELECT` debería, en teoría, funcionar igual en PostgreSQL, MySQL u Oracle.

### Bases de datos relacionales vs. archivos planos

Un archivo plano (CSV, TXT) guarda datos sin relaciones explícitas ni validación estructural: nada impide una fila corrupta o inconsistente. Una base relacional impone un esquema (tipos de columna, claves, restricciones) y permite reconectar datos entre tablas mediante claves, evitando duplicación y garantizando integridad — el motivo detrás del diseño que se verá en las semanas 3 y 4 (relaciones uno-a-muchos y muchos-a-muchos).

### Arquitectura SQL y herramientas

El módulo introduce tres formas de interactuar con PostgreSQL: `psql` (cliente de línea de comandos, el más directo), DBeaver (cliente gráfico multiplataforma) y PythonAnywhere (entorno en la nube que usa el curso para no depender de instalación local). Vale la pena practicar con `psql` desde el inicio: entender el cliente de línea de comandos ayuda a razonar sobre lo que hace cualquier ORM o herramienta gráfica por debajo.

### CRUD básico

CRUD = Create, Read, Update, Delete — las cuatro operaciones fundamentales sobre datos: `INSERT` (crear), `SELECT` (leer), `UPDATE` (actualizar) y `DELETE` (eliminar). Todo lo que se aprende en el resto de la especialización (joins, índices, transacciones, JSON) son variaciones o extensiones de estas cuatro operaciones básicas.

### Para profundizar

Ver [`resources/referencias.md`](../../resources/referencias.md) — en especial el slide-deck de pg4e.com para esta misma semana ([Lecture 01 PDF](https://www.pg4e.com/lectures/01-Intro-to-SQL-BW.pdf)) y el paper original de Codd. También el material oficial descargado del curso: [Weeks 1 and 2 — Introduction to SQL (PDF)](../weeks-1-2-introduction-to-sql.pdf).

## Ejercicios / app items

- [X] A Class Photo Gallery
- [X] A Map of Student Locations
- [X] Initial Database Setup — DB creada vía el tool del curso, 2026-09-22 (sin `.sql` propio; ver `resources/instalacion-y-conexion-psql.md`)
- [X] [Making Our First Tables](./exercises/04-making-our-first-tables.sql)
- [X] [Inserting Some Data into a Table](./exercises/05-inserting-some-data-into-a-table.sql) 

## Dudas / temas para repasar
