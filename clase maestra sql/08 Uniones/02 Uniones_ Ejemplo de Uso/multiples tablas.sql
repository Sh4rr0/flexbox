SELECT u.usuario, p.nombre, v.fecha FROM ventas AS v
	INNER JOIN productos AS p ON v.producto_id = p.id
	INNER JOIN usuarios AS u ON v.usuario_id = u.id;