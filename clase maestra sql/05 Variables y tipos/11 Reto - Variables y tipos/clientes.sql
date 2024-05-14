-- Creación de la tabla
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  email VARCHAR(100),
  fecha_registro TIMESTAMP,
  monto_compra DECIMAL(10, 2)
);

-- Inserción de algunos datos iniciales
INSERT INTO clientes (nombre, apellido, email, fecha_registro, monto_compra) VALUES
('Juan', 'Pérez', 'juan@example.com', '2022-01-15 08:30:00', 120.50),
('María', 'Gómez', 'maria@example.com', '2022-02-20 10:45:00', 300.75),
('Carlos', 'Martínez', 'carlos@example.com', '2022-03-05 15:20:00', 50.20);

-- Muestra el nombre y apellido de los clientes en una sola columna con un espacio en blanco en el medio.
SELECT nombre || ' ' || apellido AS nombre_completo FROM clientes;

-- Muestra el email y la longitud del email para cada cliente.
SELECT email, LENGTH(email) AS longitud_email FROM clientes;

--Muestra el monto de compra redondeado para cada cliente.
SELECT nombre, apellido, ROUND(monto_compra) AS monto_redondeado FROM clientes;


--Muestra la fecha de registro y el tipo de dato de la columna.
SELECT fecha_registro, PG_typeof(fecha_registro) AS tipo_fecha_registro FROM clientes;

