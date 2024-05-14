-- Creación de un gatillo (trigger) para actualizar el precio total en los pedidos después de cada inserción
CREATE OR REPLACE FUNCTION actualizar_precio_total()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pedidos
    SET precio_total = p.precio * NEW.cantidad
    FROM productos p
    WHERE p.producto_id = NEW.producto_id AND pedidos.pedido_id = NEW.pedido_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_insert_pedidos
AFTER INSERT ON pedidos
FOR EACH ROW
EXECUTE FUNCTION actualizar_precio_total();

-- Creación de una subselección para mostrar los pedidos con precio total mayor a 100
SELECT *
FROM pedidos
WHERE (SELECT precio FROM productos WHERE producto_id = pedidos.producto_id) * cantidad > 100;

-- Creación de una vista para mostrar los productos con sus cantidades pedidas
CREATE VIEW productos_con_cantidad AS
SELECT p.producto_id, p.nombre_producto, COALESCE(SUM(cantidad), 0) AS cantidad_pedida
FROM productos p
LEFT JOIN pedidos ON p.producto_id = pedidos.producto_id
GROUP BY p.producto_id, p.nombre_producto;

-- Creación de un índice en la tabla productos para acelerar las búsquedas por nombre
CREATE INDEX idx_nombre_producto ON productos(nombre_producto);
