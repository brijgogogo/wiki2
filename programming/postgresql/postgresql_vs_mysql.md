# postgresql vs mysql

## Type of databse
- Postgres: object-relational database (table-inheritance, function overloading), ACID-compaliant, transactional
- Mysql : purely relational database

## Build
- PostgreSQL:
  - Written in C.
  - Also provides REST API.
- MySQL: written in C and C++

Both are available on multiple operating systems and most programming languages have support.
Typical installations/deployment on Linux severs or cloud-based.


## NoSql
PostgreSQL supports many NoSQL features.
Newer versions of MySQL (5.7+) also support NoSQL features.

## Indexes
- Postgres: built-in support for regular B-tree and hash indexes. It also supports:
  - Expression indexes: index of the result of an expression or function
  - Partial indexes: Index only a part of a table (e.g. you can ignore soft deleted records)
- MySQL: Most indexes (Primary Key, Unique, Index, FullText) are stored in B-trees. Spatial data types use R-trees. Supports hash indexes. InnoDB engine uses inverted lists for FullText indexes.

## Replication
- Postgres: synchronous replication (2-safe replication)
- MySQL : one-way asynchronous replication. Providers culstering, auto-sharding (partioning).

## Concurrency
- Postgres implements Multiversion Concurrency Control (MVCC) without read locks
- Postgres supports parallel query plans that can use multiple CPUs/cores
- Postgres can create indexes in a non-blocking way (CREATE INDEX CONCURRENTLY)

- Postgres is more compliant to standards
- Postgres is highly extensible

- MySql has some paid versions. Forks of MySql: MariaDB, Percona, etc.

- Postgres is less popular than MySQL, so lesser number of 3rd party tools, developers/dbas.

- For read-heavy workflows, MySQL is better. Postgres supports extensibility, scalability, data integrity, standards compliance, sometimes at the expense of speed.


Platform provider could also have a preference. Heroky prefers Postgres.
Your framework may also prefer one over the other by oferring better dirvers.

## sources
https://blog.panoply.io/postgresql-vs.-mysql

