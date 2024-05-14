CREATE DATABASE metasapp;

CREATE TABLE cuentas (
  id SERIAL PRIMARY KEY,
  usuario text UNIQUE NOT NULL,
  hash text NOT NULL,
  sal text NOT NULL,
  avatar text
);

SELECT * FROM cuentas;

CREATE TYPE plazo AS ENUM ('día', 'semana', 'año');

CREATE TABLE metas (
  id SERIAL PRIMARY KEY,
  usuario_id int NOT NULL,
  detalles text NOT NULL,
  plazo plazo NOT NULL,
  frecuencia int NOT NULL,
  ícono text,
  meta int,
  fecha_límite timestamp DEFAULT now()
);

SELECT * FROM metas;

CREATE TABLE logros (
  id SERIAL PRIMARY KEY,
  meta_id int NOT NULL,
  logro int NOT NULL,
  nota text
);

SELECT * FROM logros;

