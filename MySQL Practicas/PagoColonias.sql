CREATE DATABASE PagoColonias;

USE PagoColonias;

--Tabla Colonias
CREATE TABLE Colonias {
    id_colonia INT AUTO_INCREMENT PRIMARY KEY,
    nombre_colonia VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(255)
};

-- Tabla Usuarios 
CREATE TABLE Usuarios {
    id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuarios VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15)
};

--Tabla Pagos
CREATE TABLE Pagos {
    id_pago INT AUTO_INCREMENT PRIMARY KEY
    id_usuario INT NOT NULL,
    id_colonia INT NOT NULL,
    id_servicio INT NOT NULL,
    mont DECIMAL(10, 2) NOT NULL,
    fecha_pago DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_Usuarios),
    FOREIGN KEY (id_colonia) REFERENCES colonia(id_colonia),
    FOREIGN KEY (id_servicio) REFERENCES Servicios(id_servicio)


};

-- Tabla Servicios
CREATE TABLE Servicios {
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
};
