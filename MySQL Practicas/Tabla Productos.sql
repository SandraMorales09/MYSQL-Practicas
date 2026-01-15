-- Crear base de datos
CREATE DATABASE Tienda;

-- Usar la base de datos
USE Tienda;

-- Crear tabla
CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    cantidad INT NOT NULL
);

-- Insertar datos
INSERT INTO Productos (nombre, precio, cantidad)
VALUES ('Manzanas', 1.50, 100), 
       ('Naranjas', 1.20, 150), 
       ('Plátanos', 1.00, 200);


      /* termial */
       SELECT * FROM Productos;
        
        -- Actualizar precio de las manzanas
UPDATE Productos
SET precio = 1.80
WHERE nombre = 'Manzanas';

-- Verificar el cambio
SELECT * FROM Productos;

-- Eliminar productos con cantidad menor a 150
DELETE FROM Productos
WHERE cantidad < 150;

-- Verificar cambios
SELECT * FROM Productos;