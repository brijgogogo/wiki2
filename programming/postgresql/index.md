# PostgreSQL
Object-Relational Database Management System

- [postgresql_vs_mysql](postgresql_vs_mysql)

Swich to PostgreSQL user:
$ sudo -iu postgres

Initialize database cluster:
$ initdb --locale=en_IN.UTF-8 -E UTF8 -D /var/lib/postgres/data

Start/enable service
$ systemctl start/enable postgresql.service

Create db user
$ createuser --interactive

Create db
$ createdb <dbName>
$ createdb --owner user dbName
$ createdb --help

Connect to Database shell : psql
$ psql -d <dbName>

Connect to particular database
$ \c <dbName>

Quit shell
$ \q or CTRL+d

GRANT permissions ON DATABASE <dbName> TO username;

Drop db
dropdb dbname

# User
create user <username>
dropuser username
grant all privileges on database <dbName> to <userName>;

## shell
* [psql](psql)





## GUIs
# PgAdmin
Install Python wheel using "pip install". Use Python virtual environments.
https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/
https://www.pgadmin.org/download/pgadmin-4-python-wheel/

python ~/pgadmin4/lib/python3.7/site-packages/pgadmin4/pgAdmin4.py

= REST API =
http://postgrest.org/en/v6.0/

= Extensions =
PostgreSQL is extensible. Extensions loaded into the database can function just like features that are built-in.

SELECT * FROM pg_available_extensions;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

List functions
$ \df

SELECT uuid_generate_v4();

== Export CSV ==
$ \copy (SELECT * FROM <tableName>) TO '/path/to/file.csv' DELIMITER ',' CSV HEADER;


= Backup/Restores =
pg_restore, pg_dump

$ pg_dump -U postgres --clean --password --format t mtdb > ./backup.tar



= sources =
https://www.postgresql.org/docs/




