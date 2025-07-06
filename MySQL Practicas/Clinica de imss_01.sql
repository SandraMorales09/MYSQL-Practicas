CREATE DATABASE clinica_imss;

USE clinica_imss;

CREATE TABLE pacientes (
  id_paciente INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  fecha_nacimiento DATE,
  sexo VARCHAR(10),
  direccion VARCHAR(100),
  telefono VARCHAR(20),
  numero_de_seguridad_social VARCHAR(20)
);

CREATE TABLE medicos (
  id_medico INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  especialidad VARCHAR(50),
  cedula_profesional VARCHAR(20)
);

CREATE TABLE citas (
  id_cita INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT,
  id_medico INT,
  fecha DATE,
  hora TIME,
  FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE recetas (
  id_receta INT PRIMARY KEY AUTO_INCREMENT,
  id_cita INT,
  descripcion VARCHAR(200),
  medicamento VARCHAR(50),
  dosis VARCHAR(50),
  FOREIGN KEY (id_cita) REFERENCES citas(id_cita)
);

CREATE TABLE estudios (
  id_estudio INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  descripcion VARCHAR(200)
);

CREATE TABLE estudios_realizados (
  id_estudio_realizado INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT,
  id_estudio INT,
  fecha DATE,
  resultado VARCHAR(200),
  FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
  FOREIGN KEY (id_estudio) REFERENCES estudios(id_estudio)
);

/*inserccion de datos*/

INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, sexo, direccion, telefono, numero_de_seguridad_social) VALUES
  ('Juan', 'Pérez', '1990-01-01', 'Masculino', 'Calle 123', '1234567890', '1234567890123456'),
  ('María', 'Rodríguez', '1995-02-02', 'Femenino', 'Calle 456', '9876543210', '9876543210987654');

INSERT INTO medicos (nombre, apellido, especialidad, cedula_profesional) VALUES
  ('Carlos', 'García', 'Medicina Interna', '123456'),
  ('Ana', 'Martínez', 'Pediatría', '987654');

INSERT INTO citas (id_paciente, id_medico, fecha, hora) VALUES
  (1, 1, '2022-01-01', '10:00:00'),
  (2, 2, '2022-02-02', '11:00:00');

INSERT INTO recetas (id_cita, descripcion, medicamento, dosis) VALUES
  (1, 'Receta para tratamiento de dolor de cabeza', 'Paracetamol', '500mg cada 8 horas'),
  (2, 'Receta para tratamiento de infección respiratoria', 'Antibiótico', '250mg cada 12 horas');

INSERT INTO estudios (nombre, descripcion) VALUES
  ('Análisis de sangre', 'Estudio para determinar niveles de glucosa en sangre'),
  ('Rayos X', 'Estudio para determinar lesiones óseas');

INSERT INTO estudios_realizados (id_paciente, id_estudio, fecha, resultado) VALUES
  (1, 1, '2022-01-01', 'Normal'),
  (2, 2, '2022-02-02', 'Lesión en la rodilla izquierda');

Consultas

-- Obtener la lista de pacientes
SELECT * FROM pacientes;

-- Obtener la lista de médicos
SELECT * FROM medicos;

-- Obtener la lista de citas de un paciente específico
SELECT * FROM citas WHERE id_paciente = 1;

-- Obtener la lista de recetas de una cita específica
SELECT * FROM recetas WHERE id_cita = 1;