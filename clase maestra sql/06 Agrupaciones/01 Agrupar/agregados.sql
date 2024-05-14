SELECT COUNT(*) FROM usuarios;

SELECT pais, COUNT(*) 
	FROM usuarios
	GROUP BY pais;
	
SELECT pais, COUNT(*) AS numero
	FROM usuarios
	GROUP BY pais
	ORDER BY numero DESC;
	
SELECT pais, COUNT(*) AS numero
	FROM usuarios
	WHERE
	GROUP BY pais
	HAVING COUNT(*) >= 15
	ORDER BY numero DESC;