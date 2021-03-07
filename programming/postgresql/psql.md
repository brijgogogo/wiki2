# psql shell
$ psql --help

Switch to postgres user
$ sudo -iu postgres
Start psql shell
$ psql

$ \conninfo

psql commands:
\q : quit
\? : psql commands help
\h : SQL commands help
\l : lists all databases

Ctrl+L : clears shell

CREATE DATABASE <dbName>;

Connect to database
$ psql -h localhost -p <portNumber> -U <userName> <dbName>
Connect to db if already in shell
$ \c <dbName>

DROP DATABASE <dbName>;
(semicolon is needed)

List tables (d: describe)
$ \d
Descrive table
$ \d <tableName>

CREATE TABLE person (
  id int,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  gender VARCHAR(7),
  date_of_birth DATE
);

DROP TABLE <tableName>;

CREATE TABLE person (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(7) NOT NULL,
  date_of_birth DATE NOT NULL
);

Execute commands from file
\i \path\to\file.sql


SELECT * FROM <tableName> LIMIT 10;
SELECT * FROM <tableName> OFFSET 5 LIMIT 5;
SELECT * FROM <tableName> OFFSET 5 FETCH FIRST 5 ROW ONLY; -- SQL standard
SELECT * FROM <tableName> OFFSET 5 FETCH FIRST FIRST ROW ONLY; -- SQL standard

// get first value which is not null
SELECT COALESCE(null, 1);
SELECT COALESCE(null, null, 1, 10);


// return NULL if two expressions are equal
SELECT NULLIF(10, 10); // null
SELECT NULLIF(10, 1);  // 10
SELECT COALESCE(10 / NULLIF(0, 0), 0);


SELECT NOW(); // get current timestamp
SELECT NOW()::DATE; // cast to DATE
SELECT NOW()::TIME; // cast to DATE
SELECT NOW() - INTERVAL '1 YEAR';
SELECT NOW() - INTERVAL '1 MONTHS';
SELECT NOW() - INTERVAL '1 DAYS';
SELECT NOW() + INTERVAL '1 DAYS';
SELECT NOW()::DATE + INTERVAL '1 DAYS';  // returns timestamp
SELECT (NOW()::DATE + INTERVAL '1 DAYS')::DATE; // get date type
SELECT EXTRACT(YEAR FROM NOW()); // gets year
SELECT EXTRACT(MONTH FROM NOW()); // gets month
SELECT EXTRACT(DAY FROM NOW()); // gets day
SELECT EXTRACT(DOW FROM NOW()); // gets day of week


SELECT AGE(NOW(), dob_column) as age; // age function


INSERT .... ON CONFLICT (column) DO NOTHING;

Extended display
$ \x

List all roles
$ \du

CREATE ROLE me WITH LOGIN PASSWORD 'password';
ALTER ROLE me CREATEDB; -- grant create db access

psql -d postgres -U <userName>

