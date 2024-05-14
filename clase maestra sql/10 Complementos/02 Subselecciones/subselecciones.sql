SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100

SELECT * FROM 
	(SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100) AS p
	INNER JOIN usuarios
	ON p.id = usuarios.id;

