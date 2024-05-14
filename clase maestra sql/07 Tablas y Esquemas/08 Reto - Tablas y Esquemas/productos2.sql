-- Eliminamos la tabla si existe
DROP TABLE IF EXISTS productos2;

-- Creación de la tabla productos2
CREATE TABLE productos2 (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL
);

-- Inserción de algunos datos iniciales
INSERT INTO productos2 (nombre, descripcion, precio, stock) VALUES
('Laptop', 'Portátil de última generación', 1200.50, 50),
('Teléfono', 'Teléfono inteligente con cámara de alta resolución', 450.75, 100),
('Tablet', 'Tableta ligera y versátil', 300.20, 30);


--Creamos una nueva tabla llamada productos_copia y copiamos los datos de productos a la nueva tabla.
-- Eliminamos la tabla de copia si existe
DROP TABLE IF EXISTS productos_copia;

-- Creamos una nueva tabla 'productos_copia' basada en la estructura de 'productos'
CREATE TABLE productos_copia AS TABLE productos2;

-- Mostramos los datos de la nueva tabla
SELECT * FROM productos_copia;

--Restricciones y Cambios de Datos:
--Añadimos una nueva columna llamada marca a la tabla productos.
--Cambiamos el tipo de datos de la columna precio.
--Eliminamos la columna descripcion.

-- Añadimos la columna 'marca' a la tabla 'productos'
ALTER TABLE productos2 ADD COLUMN marca VARCHAR(50);

-- Cambiamos el tipo de datos de la columna 'precio'
ALTER TABLE productos2 ALTER COLUMN precio TYPE NUMERIC(12, 2);

-- Eliminamos la columna 'descripcion' de la tabla 'productos'
ALTER TABLE productos2 DROP COLUMN descripcion;

