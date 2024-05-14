CREATE TABLE IF NOT EXISTS ventas (
  id int NOT NULL,
  usuario_id int NOT NULL,
  producto_id int NOT NULL,
  fecha timestamp
);

--
-- Insertando datos en tabla 'ventas'
--

INSERT INTO ventas (id, usuario_id, producto_id, fecha) VALUES
(1, 1, 1, '2021-05-05 13:34:13'),
(2, 1, 2, '2021-05-06 3:23:24'),
(3, 2, 3, '2021-05-06 7:54:46'),
(4, 3, 4, '2021-05-07 14:43:52'),
(5, 4, 6, '2021-05-07 15:23:13'),
(6, 5, 5, '2021-05-07 17:23:42'),
(4, 6, 6, '2021-05-08 1:21:51'),
(4, 7, 6, '2021-05-08 12:32:12');

