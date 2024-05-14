SELECT * FROM usuarios;

SELECT COUNT(*) FROM usuarios;
SELECT AVG(edad) FROM usuarios;
SELECT MIN(edad) FROM usuarios;
SELECT MAX(edad) FROM usuarios;
SELECT SUM(edad) FROM usuarios;

SELECT pais, COUNT(*) FROM usuarios GROUP BY pais;
SELECT pais, AVG(edad) FROM usuarios GROUP BY pais;
SELECT pais, MIN(edad) FROM usuarios GROUP BY pais;
SELECT pais, MAX(edad) FROM usuarios GROUP BY pais;
SELECT pais, SUM(edad) FROM usuarios GROUP BY pais;
