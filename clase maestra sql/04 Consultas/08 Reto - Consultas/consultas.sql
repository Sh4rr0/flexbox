-- Creación de la tabla
CREATE TABLE productos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  categoria VARCHAR(50),
  precio DECIMAL(10, 2),
  stock INT
);

-- Inserción de algunos datos iniciales
INSERT INTO productos (nombre, categoria, precio, stock) VALUES
('Laptop', 'Electrónica', 1200.50, 15),
('Smartphone', 'Electrónica', 699.99, 30),
('Cámara', 'Electrónica', 499.75, 10),
('Zapatos Deportivos', 'Moda', 89.99, 50),
('Bolso de Cuero', 'Moda', 149.95, 20),
('Libro de Ciencia Ficción', 'Libros', 24.99, 100);

-- Cuenta cuántos productos hay en la tabla.
SELECT COUNT(*) FROM productos;

--Muestra los productos de la categoría 'Electrónica', limitando los resultados a 2 productos por página y mostrando la segunda página.
SELECT * FROM productos WHERE categoria = 'Electrónica' LIMIT 2 OFFSET 2;

-- Encuentra los productos que pertenecen a las categorías 'Moda' o 'Libros' y cuyo nombre contiene la palabra 'Deportivos'
SELECT * FROM productos WHERE categoria IN ('Moda', 'Libros') AND nombre LIKE '%Deportivos%';

--Muestra el nombre y el estado del stock ('En Stock' o 'Agotado') para cada producto.
SELECT
  nombre,
  CASE WHEN stock > 0 THEN 'En Stock' ELSE 'Agotado' END AS estado_stock
FROM productos;

--Muestra las categorías únicas de productos.
SELECT DISTINCT categoria FROM productos;

--Ordena los productos por precio de forma descendente.
SELECT * FROM productos ORDER BY precio DESC;
