CREATE TABLE prueba (
  id int UNIQUE NOT NULL,
  numero int DEFAULT 10,
  texto text NOT NULL
);

INSERT INTO prueba ( id, numero, texto ) VALUES (1, 5, 'texto');