-- Eliminamos las tablas si existen
DROP TABLE IF EXISTS usuarios, productos, ventas;

-- Creación de la tabla usuarios
CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Inserción de algunos datos iniciales
INSERT INTO usuarios (nombre, email) VALUES
('Juan Pérez', 'juan@example.com'),
('María Gómez', 'maria@example.com'),
('Carlos Rodríguez', 'carlos@example.com');

-- Creación de la tabla productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Inserción de algunos datos iniciales
INSERT INTO productos (nombre_producto, precio) VALUES
('Laptop', 1200.00),
('Teléfono', 500.00),
('Tablet', 300.00);

-- Creación de la tabla ventas
CREATE TABLE ventas (
    venta_id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(usuario_id),
    producto_id INTEGER REFERENCES productos(producto_id),
    cantidad INTEGER NOT NULL,
    fecha_venta DATE NOT NULL
);

-- Inserción de algunos datos iniciales

INSERT INTO ventas (usuario_id, producto_id, cantidad, fecha_venta) VALUES
(1, 1, 2, '2023-01-10'),
(2, 2, 1, '2023-01-11'),
(3, NULL, 3, '2023-01-12'),
(NULL, 3, 1, '2023-01-13');

--Obtenemos solo las filas que tienen coincidencias en ambas tablas (ventas con información de usuario y producto).

SELECT usuarios.nombre AS usuario, productos.nombre_producto, ventas.cantidad, ventas.fecha_venta
FROM ventas
INNER JOIN usuarios ON ventas.usuario_id = usuarios.usuario_id
INNER JOIN productos ON ventas.producto_id = productos.producto_id;
LEFT JOIN:
--Mostramos todas las ventas, incluso si no tienen información de usuario o producto.

SELECT usuarios.nombre AS usuario, productos.nombre_producto, ventas.cantidad, ventas.fecha_venta
FROM ventas
LEFT JOIN usuarios ON ventas.usuario_id = usuarios.usuario_id
LEFT JOIN productos ON ventas.producto_id = productos.producto_id;
RIGHT JOIN:
--Mostramos todos los usuarios y productos, incluso si no están asociados con ventas.

SELECT usuarios.nombre AS usuario, productos.nombre_producto, ventas.cantidad, ventas.fecha_venta
FROM ventas
RIGHT JOIN usuarios ON ventas.usuario_id = usuarios.usuario_id
RIGHT JOIN productos ON ventas.producto_id = productos.producto_id;
FULL OUTER JOIN:
--Mostramos todas las ventas, usuarios y productos, incluso si no están asociados.

SELECT usuarios.nombre AS usuario, productos.nombre_producto, ventas.cantidad, ventas.fecha_venta
FROM ventas
FULL OUTER JOIN usuarios ON ventas.usuario_id = usuarios.usuario_id
FULL OUTER JOIN productos ON ventas.producto_id = productos.producto_id;