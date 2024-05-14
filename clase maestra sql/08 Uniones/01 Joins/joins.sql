SELECT * FROM productos
	INNER JOIN usuarios 
	ON productos.usuario_id = usuarios.id;
	
SELECT p.nombre, u.nombre, u.apellido FROM productos AS p
	INNER JOIN usuarios AS u 
	ON p.usuario_id = u.id;