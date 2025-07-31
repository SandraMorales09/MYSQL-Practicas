/* este historial es ficticio */

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS historial_agua;

-- Usar la base de datos
USE historial_agua;

-- Crear la tabla de pagos
CREATE TABLE pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pago DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL  -- Permite almacenar montos con decimales
);

-- Insertar los datos de los pagos (desde enero de 2020 hasta diciembre de 2025)
-- Se insertan 12 meses por año, por lo que se insertan un total de 72 registros.

INSERT INTO pagos (fecha_pago, monto) VALUES
('2020-01-01', 60.00), ('2020-02-01', 60.00), ('2020-03-01', 60.00), ('2020-04-01', 60.00),
('2020-05-01', 60.00), ('2020-06-01', 60.00), ('2020-07-01', 60.00), ('2020-08-01', 60.00),
('2020-09-01', 60.00), ('2020-10-01', 60.00), ('2020-11-01', 60.00), ('2020-12-01', 60.00),
('2021-01-01', 60.00), ('2021-02-01', 60.00), ('2021-03-01', 60.00), ('2021-04-01', 60.00),
('2021-05-01', 60.00), ('2021-06-01', 60.00), ('2021-07-01', 60.00), ('2021-08-01', 60.00),
('2021-09-01', 60.00), ('2021-10-01', 60.00), ('2021-11-01', 60.00), ('2021-12-01', 60.00),
('2022-01-01', 60.00), ('2022-02-01', 60.00), ('2022-03-01', 60.00), ('2022-04-01', 60.00),
('2022-05-01', 60.00), ('2022-06-01', 60.00), ('2022-07-01', 60.00), ('2022-08-01', 60.00),
('2022-09-01', 60.00), ('2022-10-01', 60.00), ('2022-11-01', 60.00), ('2022-12-01', 60.00),
('2023-01-01', 60.00), ('2023-02-01', 60.00), ('2023-03-01', 60.00), ('2023-04-01', 60.00),
('2023-05-01', 60.00), ('2023-06-01', 60.00), ('2023-07-01', 60.00), ('2023-08-01', 60.00),
('2023-09-01', 60.00), ('2023-10-01', 60.00), ('2023-11-01', 60.00), ('2023-12-01', 60.00),
('2024-01-01', 60.00), ('2024-02-01', 60.00), ('2024-03-01', 60.00), ('2024-04-01', 60.00),
('2024-05-01', 60.00), ('2024-06-01', 60.00), ('2024-07-01', 60.00), ('2024-08-01', 60.00),
('2024-09-01', 60.00), ('2024-10-01', 60.00), ('2024-11-01', 60.00), ('2024-12-01', 60.00),
('2025-01-01', 60.00), ('2025-02-01', 60.00), ('2025-03-01', 60.00), ('2025-04-01', 60.00),
('2025-05-01', 60.00), ('2025-06-01', 60.00), ('2025-07-01', 60.00), ('2025-08-01', 60.00),
('2025-09-01', 60.00), ('2025-10-01', 60.00), ('2025-11-01', 60.00), ('2025-12-01', 60.00);

-- Consultas de ejemplo (para verificar y analizar los datos)

-- Mostrar todos los pagos
SELECT * FROM pagos;

-- Calcular el total gastado en agua
SELECT SUM(monto) AS total_gastado FROM pagos;

-- Calcular el gasto anual
SELECT YEAR(fecha_pago) AS anio, SUM(monto) AS total_gastado FROM pagos GROUP BY anio ORDER BY anio;

-- Calcular el gasto mensual promedio
SELECT MONTHNAME(fecha_pago) AS mes, AVG(monto) AS promedio_mensual FROM pagos GROUP BY mes ORDER BY MONTH(fecha_pago);
