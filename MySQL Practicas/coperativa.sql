-- Crear la base de datos para la cooperativa escolar (si no existe ya)
CREATE DATABASE IF NOT EXISTS CooperativaEscolar;

-- Usar la base de datos
USE CooperativaEscolar;

-- Crear la tabla para el registro de pagos de la cooperativa
CREATE TABLE pagos_cooperativa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mes VARCHAR(20) NOT NULL,
    anio INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_pago DATE NOT NULL,
    descripcion VARCHAR(255) DEFAULT 'Pago de cooperativa escolar',
    responsable VARCHAR(100) NOT NULL
);

-- Insertar pagos de ejemplo para la cooperativa a partir de abril de 2025
INSERT INTO pagos_cooperativa (mes, año, monto, fecha_pago, descripcion, responsable)
VALUES 
('Abril', 2025, 500.00, '2025-04-01', 'Cuota mensual de la cooperativa', 'Juan Pérez'),
('Mayo', 2025, 500.00, '2025-05-01', 'Cuota mensual de la cooperativa', 'María López'),
('Junio', 2025, 500.00, '2025-06-01', 'Cuota mensual de la cooperativa', 'Luis Hernández');