SELECT id, nombre, apellido FROM usuarios 
    WHERE nombre = 'david'
    ORDER BY apellido DESC
    LIMIT 3 OFFSET 0;