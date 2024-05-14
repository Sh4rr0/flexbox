-- CRUD

-- Create/Insert (Insertar)
INSERT INTO "paises" ("id", "iso", "nombre") VALUES
(1, 'AF', 'AFGHANISTAN');

-- Read (Leer)
SELECT * FROM paises WHERE nombre = 'Algeria';

-- Update (Actualizar)
UPDATE "paises" 
    SET 
        nombre = 'ALGE', 
        iso = 'AA' 
    WHERE nombre = 'Algeria';

-- Delete (Borrar)
DELETE FROM paises WHERE nombre = 'Algeria';

