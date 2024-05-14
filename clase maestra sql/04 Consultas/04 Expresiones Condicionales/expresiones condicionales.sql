SELECT legible,
    CASE
        WHEN legible = 'Argentina' THEN 'che'
        WHEN legible = 'Mexico' THEN 'güey'
        ELSE 'pana' 
	END AS dude
FROM paises;