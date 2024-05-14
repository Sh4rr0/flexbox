CREATE DATABASE metasapp;

CREATE TABLE cuentas (
  id SERIAL PRIMARY KEY,
  usuario text UNIQUE NOT NULL,
  hash text NOT NULL,
  sal text NOT NULL,
  avatar text
);

CREATE TYPE plazo AS ENUM ('día', 'semana', 'mes', 'año');

CREATE TABLE metas (
  id SERIAL PRIMARY KEY,
  usuario_id int NOT NULL,
  detalles text NOT NULL,
  plazo plazo NOT NULL,
  frecuencia int NOT NULL,
  ícono text,
  meta int,
  fecha_límite timestamptz
);

CREATE TABLE logros (
  id SERIAL PRIMARY KEY,
  meta_id int NOT NULL,
  logro int NOT NULL,
  nota text,
  fecha timestamptz DEFAULT now()
);

SELECT * FROM cuentas;
SELECT * FROM metas;
SELECT * FROM logros;

INSERT INTO cuentas (usuario, hash, sal, avatar) VALUES
(
	'Sean Kelly', 
	'11c150eb6c1b776f390be60a0a5933a2a2f8c0a0ce766ed92fea5bfd9313c8f6',
	'f1nd1ngd0ry',
	'avatars/0000001.jpg'
);
UPDATE cuentas SET usuario = 'Richard Carapaz' WHERE id = 1;
UPDATE cuentas SET avatar = 'avatars/0000002.jpg' WHERE id = 1;
DELETE FROM cuentas WHERE id = 1;

INSERT INTO metas (usuario_id, detalles, plazo, frecuencia, ícono, meta, fecha_límite) VALUES
(
	1, 
	'Salir a ciclear 30 millas',
	'semana',
	3,
	'icon-ejercicio',
	100,
	'2025-01-01T00:00:00.000000'
);
UPDATE metas SET detalles = 'Salir a ciclear 100 millas' WHERE id = 1;
DELETE FROM metas WHERE id = 1;

INSERT INTO logros (meta_id, logro, nota) VALUES 
	(1, 3, 'Estaba con energía así que decidí hacer una ruta más esta semana.');
UPDATE logros SET logro = 4 WHERE id = 1;
DELETE FROM logros WHERE id = 1;

BEGIN;
DELETE FROM logros WHERE id = 1;
DELETE FROM metas WHERE id = 1;
DELETE FROM cuentas WHERE id = 1;
COMMIT;



