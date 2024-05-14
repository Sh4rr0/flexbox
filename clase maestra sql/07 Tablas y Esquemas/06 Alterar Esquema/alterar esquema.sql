ALTER TABLE prueba ADD buleano bool;

ALTER TABLE prueba ADD texto2 text DEFAULT 'predeterminado';

ALTER TABLE prueba ALTER COLUMN texto2 TYPE varchar;

ALTER TABLE prueba DROP COLUMN buleano, DROP COLUMN IF EXISTS texto2;