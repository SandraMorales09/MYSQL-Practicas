-- Crear la base de datos del hospital
CREATE DATABASE Hospital;

-- Usar la base de datos creada
USE Hospital;

-- Crear tabla para los pacientes
CREATE TABLE Pacientes (
    ID_Paciente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    FechaNacimiento DATE,
    Genero ENUM('M', 'F'),
    Direccion VARCHAR(100),
    Telefono VARCHAR(15)
);

-- Crear tabla para los médicos
CREATE TABLE Medicos (
    ID_Medico INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Especialidad VARCHAR(50),
    Telefono VARCHAR(15)
);

-- Crear tabla para las citas
CREATE TABLE Citas (
    ID_Cita INT AUTO_INCREMENT PRIMARY KEY,
    ID_Paciente INT,
    ID_Medico INT,
    FechaCita DATETIME,
    Notas TEXT,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Medico) REFERENCES Medicos(ID_Medico)
);

-- Crear tabla para los tratamientos
CREATE TABLE Tratamientos (
    ID_Tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion TEXT,
    Costo DECIMAL(10, 2)
);

-- Crear tabla para la relación entre pacientes y tratamientos
CREATE TABLE PacientesTratamientos (
    ID_Paciente INT,
    ID_Tratamiento INT,
    FechaInicio DATE,
    FechaFin DATE,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Tratamiento) REFERENCES Tratamientos(ID_Tratamiento)
);