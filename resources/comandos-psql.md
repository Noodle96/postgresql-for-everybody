# Comandos del cliente psql

Referencia de los meta-comandos (`\algo`) más usados dentro de una sesión de `psql`. No es la lista completa (para eso está `\?` o la documentación oficial) — son los que realmente se usan seguido en este curso.

## Conexión e información general

| Comando | Qué hace |
|---|---|
| `\conninfo` | Muestra a qué servidor, puerto, base de datos y usuario estás conectado ahora mismo |
| `\l` | Lista todas las bases de datos disponibles en el servidor |
| `\c nombre_bd` | Cambia de base de datos sin salir de psql (reconecta) |
| `\du` | Lista los usuarios/roles del servidor y sus permisos |
| `\q` | Sale de psql |
| `\?` | Muestra la ayuda de todos los meta-comandos de psql |
| `\h COMANDO_SQL` | Muestra la sintaxis de un comando SQL (ej. `\h INSERT`) |

## Explorar tablas y objetos

| Comando | Qué hace |
|---|---|
| `\dt` | Lista las tablas del esquema actual |
| `\d nombre_tabla` | Describe columnas, tipos e índices de una tabla |
| `\d+ nombre_tabla` | Igual que `\d` pero con detalle extra (tamaño, descripción) |
| `\dn` | Lista los esquemas (schemas) de la base de datos |
| `\di` | Lista los índices |
| `\dv` | Lista las vistas (views) |
| `\df` | Lista las funciones y stored procedures |

## Formato de salida

| Comando | Qué hace |
|---|---|
| `\x` | Activa/desactiva el formato expandido (una columna por línea, útil con filas anchas) |
| `\a` | Alterna entre salida alineada y no alineada (útil al exportar) |
| `\timing` | Activa/desactiva mostrar cuánto tardó cada query en ejecutarse |
| `\pset null '(null)'` | Define cómo se muestran los valores NULL (por defecto se ven vacíos) |

## Archivos y edición

| Comando | Qué hace |
|---|---|
| `\i archivo.sql` | Ejecuta un script `.sql` desde un archivo (así se corren los ejercicios guardados en `exercises/`) |
| `\o archivo.txt` | Redirige la salida de las siguientes queries a un archivo |
| `\e` | Abre el último comando en tu editor de texto por defecto para modificarlo |
| `\copy tabla TO 'archivo.csv' CSV HEADER` | Exporta una tabla a CSV (versión del lado del cliente, no necesita permisos de servidor) |

## Historial y sesión

| Comando | Qué hace |
|---|---|
| `\s` | Muestra el historial de comandos ejecutados en la sesión |
| `\set` | Muestra (o define) variables internas de psql |
| `\!` | Ejecuta un comando de shell sin salir de psql |

## Referencias

- [PostgreSQL Docs — psql](https://www.postgresql.org/docs/current/app-psql.html)
- Dentro de cualquier sesión de psql: `\?` para la lista completa y actualizada según tu versión.
