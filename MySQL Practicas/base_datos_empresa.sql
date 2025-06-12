CREATE DATABASE empresa;
USE empresa;

CREATE DATABASE empresa;
USE empresa;
Creación de las tablas
Tabla empleados
sql
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);
Tabla proyectos
sql
CREATE TABLE proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    presupuesto DECIMAL(15, 2)
);
Tabla intermedia empleados_proyectos (relación muchos a muchos)
sql
CREATE TABLE empleados_proyectos (
    id_empleado INT,
    id_proyecto INT,
    horas_asignadas INT,
    PRIMARY KEY (id_empleado, id_proyecto),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id)
);
Inserción de datos de ejemplo
Datos para la tabla empleados
sql
INSERT INTO empleados (nombre, puesto, salario, fecha_ingreso) 
VALUES 
('Ana López', 'Gerente de Ventas', 5000.00, '2020-01-15'),
('Luis Torres', 'Analista de TI', 4500.00, '2021-06-20'),
('Carla Gómez', 'Desarrollador', 4000.00, '2019-11-30');
Datos para la tabla proyectos
sql
INSERT INTO proyectos (nombre, fecha_inicio, presupuesto) 
VALUES 
('Proyecto A', '2023-01-01', 100000.00),
('Proyecto B', '2023-03-15', 50000.00),
('Proyecto C', '2023-05-01', 75000.00);
Datos para la tabla empleados_proyectos
sql
INSERT INTO empleados_proyectos (id_empleado, id_proyecto, horas_asignadas) 
VALUES 
(1, 1, 100),
(2, 1, 120),
(2, 2, 90),
(3, 3, 80);
Consultas de ejemplo
Ver los empleados asignados a un proyecto específico:

sql
SELECT e.nombre, p.nombre AS proyecto, ep.horas_asignadas
FROM empleados e
JOIN empleados_proyectos ep ON e.id = ep.id_empleado
JOIN proyectos p ON p.id = ep.id_proyecto
WHERE p.nombre = 'Proyecto A';
Calcular el total del salario de todos los empleados:

sql
SELECT SUM(salario) AS total_salarios FROM empleados;
Proyectos con presupuesto mayor a 60,000:

sql
SELECT * FROM proyectos WHERE presupuesto > 60000;