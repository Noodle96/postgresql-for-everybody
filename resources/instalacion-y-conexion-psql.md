# Instalación y conexión a psql — Linux Mint

Guía para instalar el cliente de PostgreSQL (`psql`) desde terminal en Linux Mint y conectarte al servidor remoto que te da el curso (no instala un servidor PostgreSQL local — solo el cliente necesario para conectarte al de Coursera/pg4e).

## 1. Instalar el cliente psql

Linux Mint es Debian/Ubuntu-based, así que usa `apt`:

```bash
sudo apt update
sudo apt install postgresql-client
```

Verifica que quedó instalado:

```bash
psql --version
```

## 2. Datos que te da el curso

En el Módulo 1 de cada curso hay una lectura llamada **"Connecting to Your Database Server"** donde Coursera/pg4e te entrega:

- **Host** (servidor, ej. `pg.pg4e.com` o similar)
- **Puerto** (por defecto PostgreSQL usa `5432`, pero el curso puede asignar uno distinto)
- **Usuario**
- **Contraseña**
- **Nombre de la base de datos**

Cada curso de la especialización usa una base de datos distinta, así que estos datos cambian entre curso y curso — revisa la lectura correspondiente cada vez que empieces un curso nuevo.

## 3. Conectarte con psql

Comando base:

```bash
psql -h <host> -p <puerto> -U <usuario> -d <basededatos>
```

Ejemplo (con placeholders a reemplazar por tus credenciales reales):

```bash
psql -h pg.example.com -p 5432 -U mi_usuario -d mi_basededatos
```

Te va a pedir la contraseña de forma interactiva (no se muestra en pantalla mientras escribes — es normal).

> **Nota:** pg4e/Coursera suele darte el comando sin `-d`, así: `psql -h host -p puerto -U usuario basededatos`. Es válido — `psql` acepta la base de datos como argumento posicional (`psql [opciones] [basededatos [usuario]]`), y si ya diste `-U` explícito, el argumento suelto que queda se interpreta como la base de datos. Ambas formas son funcionalmente idénticas; en este repo se prefiere `-d` explícito por claridad de lectura.

### Evitar escribir la contraseña cada vez (opcional)

Puedes crear un archivo `~/.pgpass` con el formato:

```
host:puerto:basededatos:usuario:contraseña
```

Y darle permisos restringidos (psql lo exige):

```bash
chmod 600 ~/.pgpass
```

**Cuidado:** esto guarda tu contraseña en texto plano en tu máquina. Solo hazlo si es tu equipo personal y confías en su seguridad.

## 4. Comandos básicos una vez conectado

> Lista completa y por categorías en [`comandos-psql.md`](./comandos-psql.md). Aquí solo los siete que más vas a usar al inicio.

| Comando             | Qué hace                                          |
| ------------------- | -------------------------------------------------- |
| `\dt`             | Lista las tablas de la base de datos actual        |
| `\d nombre_tabla` | Describe columnas y tipos de una tabla             |
| `\l`              | Lista todas las bases de datos disponibles         |
| `\du`             | Lista los usuarios/roles                           |
| `\x`              | Activa formato expandido (útil para filas anchas) |
| `\conninfo`       | Muestra a qué servidor/base estás conectado      |
| `\q`              | Salir de psql                                      |

## 5. Problemas comunes

- **`psql: error: connection to server ... failed: Connection refused`** — revisa que el host/puerto sean exactos (copia y pega, no los transcribas a mano) y que tengas conexión a internet.
- **`password authentication failed`** — contraseña mal copiada o usuario incorrecto; vuelve a la lectura del curso y confirma las credenciales.
- **`SSL connection is required`** — algunos hosts remotos exigen SSL; agrega `sslmode=require` así: `psql "host=<host> port=<puerto> dbname=<basededatos> user=<usuario> sslmode=require"`.
- **`ERROR: permission denied for view pg_roles`** (o `pg_database`) — no es un error de tu tabla. La base de datos del curso vive en un servidor compartido, y tu usuario no tiene permiso sobre catálogos a nivel de servidor. Comandos como `\d tabla` consultan `pg_roles` internamente para mostrar el formato completo, y ahí truena. Alternativa que sí funciona en este hosting:

  ```sql
  SELECT column_name, data_type, character_maximum_length, is_nullable, column_default
  FROM information_schema.columns
  WHERE table_name = 'nombre_tabla'
  ORDER BY ordinal_position;
  ```

  Ver [PostgreSQL Shared Database Hosting (wiki)](https://wiki.postgresql.org/wiki/Shared_Database_Hosting#template1), citado por el propio curso.

## Referencias

- [PostgreSQL Docs — psql](https://www.postgresql.org/docs/current/app-psql.html)
- [pg4e.com](https://www.pg4e.com/) (ver instrucciones de conexión específicas del curso)
