CREATE VIEW productos100 AS
    SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100

SELECT * FROM 
	productos100 AS p
	INNER JOIN usuarios
	ON p.id = usuarios.id;
	
DROP VIEW IF EXISTS productos100;