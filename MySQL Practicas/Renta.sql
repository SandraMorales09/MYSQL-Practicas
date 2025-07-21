-- Crear la base de datos de renta (negocio del señor)
CREATE DATABASE IF NOT EXIST rosticeria;

--Usar la base de datos
USE Rosticeria;

--Crear la tabla para el registro de pagos de renta
CREATE TABLE pagos_renta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mes VARCHAR(20) NOT NULL,
    anio INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATE NOT NULL;
    descripcion VARCHAR(255) DEFAULT 'Pago de renta'
);

-- Inserta pagos de renta por 2000 pesos a partir de abrill de 2025
INSERT INTO pagos_renta (mes, anio, monto, fecha_pago; descripcion)
VALUES
('Abril, 2025, 2000.00 '2025-04-25, 'Renta del local de la rosticeria'),
('Mayo'2000.00, 2025-05-01,'Renta del local de la rosticeria'),
()()()