CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE profesores(
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE aulas (
  id_aula INT PRIMARY KEY AUTO_INCREMENT,
  capacidad INT,
  ubicacion VARCHAR(50)
);

CREATE TABLE horarios (
  id_horario INT PRIMARY KEY AUTO_INCREMENT,
  id_curso INT,
  id_aula INT,
  dia VARCHAR(10),
  hora_inicio TIME,
  hora_fin TIME,
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
  FOREIGN KEY (id_aula) REFERENCES aulas(id_aula)
);

/*insercion de datos*/

INSERT INTO estudiantes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) VALUES
  ('Juan', 'Pérez', '2000-01-01', 'Calle 123', '1234567890', 'juan.perez@example.com'),
  ('María', 'Rodríguez', '2001-02-02', 'Calle 456', '9876543210', 'maria.rodriguez@example.com');

INSERT INTO profesores (nombre, apellido, cargo, salario) VALUES
  ('Carlos', 'García', 'Profesor de Matemáticas', 40000.00),
  ('Ana', 'Martínez', 'Profesora de Lengua', 35000.00);

INSERT INTO cursos (nombre, descripcion, id_profesor) VALUES
  ('Matemáticas', 'Curso de matemáticas básicas', 1),
  ('Lengua', 'Curso de lengua y literatura', 2);

INSERT INTO notas (id_estudiante, id_curso, nota) VALUES
  (1, 1, 8.50),
  (2, 2, 9.00);

INSERT INTO aulas (capacidad, ubicacion) VALUES
  (30, 'Edificio A'),
  (25, 'Edificio B');

INSERT INTO horarios (id_curso, id_aula, dia, hora_inicio, hora_fin) VALUES
  (1, 1, 'Lunes', '08:00:00', '09:30:00'),
  (2, 2, 'Martes', '10:00:00', '11:30:00');

Consultas

-- Obtener la lista de estudiantes
SELECT * FROM estudiantes;

-- Obtener la lista de cursos
SELECT * FROM cursos;

-- Obtener la nota de un estudiante en un curso específico
SELECT nota FROM notas WHERE id_estudiante = 1 AND id_curso = 1;

-- Obtener el horario de un curso específico
SELECT * FROM horarios WHERE id_curso = 1;
