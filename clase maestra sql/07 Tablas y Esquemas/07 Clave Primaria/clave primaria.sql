DROP TABLE prueba;

CREATE TABLE prueba (
  id SERIAL PRIMARY KEY,
  texto text
);

INSERT INTO prueba ( texto ) VALUES ( 'veinte' );
INSERT INTO prueba ( texto ) VALUES ( 'cuarenta' );
INSERT INTO prueba ( texto ) VALUES ( 'ochenta' );