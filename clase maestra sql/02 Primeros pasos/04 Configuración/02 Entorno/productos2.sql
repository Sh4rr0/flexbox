CREATE TABLE IF NOT EXISTS productos (
  id SERIAL PRIMARY KEY,
  nombre varchar(80),
  precio_usd int
);

--
-- Insertando datos en tabla 'productos'
--

INSERT INTO productos (nombre, precio_usd) VALUES
('Clase Maestra de HTML', 39),
('Clase Maestra de CSS', 49),
('Clase Maestra de JavaScript', 59),
('Clase Maestra del DOM', 49),
('Herramientas Frontend', 39),
('Ruta Frontend', 199);

