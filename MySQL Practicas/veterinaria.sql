CREATE DATABASE veterinaria;
USE veterinaria;
Creación de las tablas
Tabla clientes
sql
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100)
);
Tabla mascotas
sql
CREATE TABLE mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raza VARCHAR(50),
    edad INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
Tabla empleados
sql
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);
Tabla citas
sql
CREATE TABLE citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(255),
    id_mascota INT,
    id_empleado INT,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id)
);
Inserción de datos de ejemplo
Datos para la tabla clientes
sql
INSERT INTO clientes (nombre, direccion, telefono, email) 
VALUES 
('Juan Pérez', 'Calle 1, Ciudad A', '5551234567', 'juan.perez@example.com'),
('Ana Gómez', 'Calle 2, Ciudad B', '5559876543', 'ana.gomez@example.com');
Datos para la tabla mascotas
sql
INSERT INTO mascotas (nombre, especie, raza, edad, id_cliente) 
VALUES 
('Bobby', 'Perro', 'Labrador', 5, 1),
('Misi', 'Gato', 'Persa', 3, 2);
Datos para la tabla empleados
sql
INSERT INTO empleados (nombre, puesto, salario, fecha_ingreso) 
VALUES 
('Luis Torres', 'Veterinario', 6000.00, '2020-05-01'),
('Carla López', 'Recepcionista', 3500.00, '2021-09-15');
Datos para la tabla citas
sql
INSERT INTO citas (fecha, hora, motivo, id_mascota, id_empleado) 
VALUES 
('2025-03-28', '10:30:00', 'Vacunación', 1, 1),
('2025-03-29', '15:00:00', 'Consulta general', 2, 1);
Consultas de ejemplo
Ver las citas programadas de una mascota específica:

sql
SELECT c.fecha, c.hora, c.motivo, e.nombre AS veterinario 
FROM citas c
JOIN empleados e ON c.id_empleado = e.id
WHERE c.id_mascota = 1;
Listar todas las mascotas de un cliente específico:

sql
SELECT m.nombre, m.especie, m.raza, m.edad 
FROM mascotas m
JOIN clientes c ON m.id_cliente = c.id
WHERE c.nombre = 'Juan Pérez';
Calcular el gasto mensual en salarios de los empleados:

sql
SELECT SUM(salario) AS gasto_mensual FROM empleados;