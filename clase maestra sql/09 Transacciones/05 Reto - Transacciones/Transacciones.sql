-- Eliminamos la tabla si existe
DROP TABLE IF EXISTS cuentas_bancarias;

-- Creación de la tabla cuentas_bancarias
CREATE TABLE cuentas_bancarias (
    cuenta_id SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL
);

-- Inserción de algunos datos iniciales
INSERT INTO cuentas_bancarias (nombre_cliente, saldo) VALUES
('Cliente A', 1000.00),
('Cliente B', 500.00),
('Cliente C', 2000.00);


-- Iniciamos una transacción
BEGIN;

-- Mostramos el estado inicial de las cuentas
SELECT * FROM cuentas_bancarias;

-- Simulamos una transferencia entre las cuentas A y B
UPDATE cuentas_bancarias SET saldo = saldo - 200 WHERE nombre_cliente = 'Cliente A';
UPDATE cuentas_bancarias SET saldo = saldo + 200 WHERE nombre_cliente = 'Cliente B';

-- Mostramos el estado después de la transferencia (pero aún no confirmamos la transacción)
SELECT * FROM cuentas_bancarias;

-- Simulamos un problema de concurrencia (otra transacción intenta transferir entre las cuentas B y C)
-- Esta transacción no se confirmará debido al conflicto con la primera transacción
SAVEPOINT savepoint_transferencia;
UPDATE cuentas_bancarias SET saldo = saldo - 300 WHERE nombre_cliente = 'Cliente B';
UPDATE cuentas_bancarias SET saldo = saldo + 300 WHERE nombre_cliente = 'Cliente C';

-- Mostramos el estado después del intento de la segunda transferencia (aún no confirmada)
SELECT * FROM cuentas_bancarias;

-- Revertimos la segunda transacción debido al problema de concurrencia
ROLLBACK TO savepoint_transferencia;

-- Mostramos el estado después de revertir la segunda transacción
SELECT * FROM cuentas_bancarias;

-- Confirmamos la primera transacción
COMMIT;

-- Mostramos el estado final de las cuentas
SELECT * FROM cuentas_bancarias;
