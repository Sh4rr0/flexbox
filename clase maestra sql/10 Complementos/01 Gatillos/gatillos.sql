CREATE TABLE empleados (
    empleado text PRIMARY KEY,
    salario integer
);

SELECT * FROM empleados;

INSERT INTO empleados (empleado, salario) VALUES ('David Lebón', 100);

SELECT * FROM empleados;

CREATE TABLE auditoria_empleados (
    operación char(1) NOT NULL,
	momento timestamp NOT NULL,
    usuario text NOT NULL,
    empleado text NOT NULL,
    salario integer
);

SELECT * FROM auditoria_empleados;

CREATE OR REPLACE FUNCTION auditar() RETURNS TRIGGER AS $auditar_empleados$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO auditoria_empleados SELECT 'D', now(), empleado, OLD.*;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO auditoria_empleados SELECT 'U', now(), empleado, NEW.*;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO auditoria_empleados SELECT 'I', now(), empleado, NEW.*;
        END IF;
        RETURN NULL;
    END;
$auditar_empleados$ LANGUAGE plpgsql;

CREATE TRIGGER auditar_empleados
AFTER INSERT OR UPDATE OR DELETE ON empleados
    FOR EACH ROW EXECUTE FUNCTION auditar();

INSERT INTO empleados (empleado, salario) VALUES ('Pedro Aznar', 100);
INSERT INTO empleados (empleado, salario) VALUES ('Oscar Moro', 100);
UPDATE empleados SET salario = 200 WHERE empleado = 'David Lebón';
DELETE FROM empleados WHERE empleado = 'Pedro Aznar';