SELECT * FROM balances;

BEGIN;
UPDATE balances SET balance = balance - 100.00
    WHERE usuario = 'Jeff Bezos';
SAVEPOINT pago_elon
UPDATE balances SET balance = balance + 100.00
    WHERE usuario = 'Elon Musk';
ROLLBACK pago_elon 
UPDATE balances SET balance = balance + 100.00
    WHERE usuario = 'Bill Gates';
COMMIT;