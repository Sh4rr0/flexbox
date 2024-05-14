CREATE TABLE IF NOT EXISTS productos (
  id int NOT NULL,
  usuario_id int NOT NULL,
  nombre varchar(80),
  precio_usd int
);

--
-- Insertando datos en tabla 'productos'
--

INSERT INTO productos (id, usuario_id, nombre, precio_usd) VALUES
(1, 10, 'Clase Maestra de HTML', 39),
(2, 10, 'Clase Maestra de CSS', 49),
(3, 10, 'Clase Maestra de JavaScript', 59),
(5, 10, 'Clase Maestra del DOM', 49),
(6, 10, 'Herramientas Frontend', 39),
(4, 12, 'Ruta Frontend', 199),
(7, 15, 'Clase Maestra de HTML', 39),
(8, 16, 'Clase Maestra de HTML', 39);

