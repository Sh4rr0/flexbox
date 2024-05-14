SELECT * FROM paises 
    WHERE iso3 = 'AFG' 
	OR iso3 IS NULL
    ORDER BY codigo DESC;
	
SELECT * FROM paises 
    WHERE legible LIKE '%t_nia';
	
SELECT * FROM paises 
    WHERE legible IN ( 'Ecuador', 'Mexico' );
