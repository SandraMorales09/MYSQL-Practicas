/*base de datos empresa, tabla empleados con las siguientes columnas: id, nombre, apellido, edad y salario*/

CREATE DATABASE empresa;

USE empresa;

CREATE TABLE empleados {
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50)
    apellido VARCHAR(50),
    edad INT,
    salarion DECIMAL(10, 2)
};

/* Ejercicio insertar datos de la tabla */

INSERT INTO empleados (nombre, apellido, edad, salario) VALUES

('Michel', 'Pelps', 30, 5000.00)
('Maria', 'Gomez', 25, 4000.00)
('Carlos', 'Lopez', 40, 600.00)
('Ana', 'Rodriguez', 28, 4500.00)
('Pedro', 'Martinez', 35, 5500.00);

/* Consulta registros */

SELECT * FROM empleados;

/*consulta registro especifico de la tabla*/

SELECT * FROM empleados WHERE id = 2;

/*Actualiza registro de tabla*/

UPDATE empleados SET salario = 6500.00 
WHERE id = 3;

/* Eliminar un registro de la tabla */

DELETE FROM empleados WHERE id = 5;

/* onsulta registros de tabla ordenadas de edad*/

SELECT * FROM empleados ORDER BY edad ASC;

/*Consulta los registros de la tabla con un salario mayor a 5000.00*/

SELECT * FROM empleados WHERE salario < 5000.00;