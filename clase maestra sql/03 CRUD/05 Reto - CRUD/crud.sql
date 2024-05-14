-- Creación de la tabla
CREATE TABLE estudiantes (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  edad INT,
  carrera VARCHAR(50)
);

-- Inserción de algunos datos iniciales
INSERT INTO estudiantes (nombre, edad, carrera) VALUES
('Juan Pérez', 20, 'Ingeniería Informática'),
('María Gómez', 22, 'Arquitectura'),
('Carlos Rodríguez', 21, 'Medicina');


SELECT * FROM estudiantes WHERE edad > 20;

UPDATE estudiantes SET edad = 22 WHERE nombre = 'Juan Pérez';

INSERT INTO estudiantes (nombre, edad, carrera) VALUES ('Ana Sánchez', 23, 'Psicología');

DELETE FROM estudiantes WHERE nombre = 'Carlos Rodríguez';
