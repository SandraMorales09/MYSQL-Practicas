Base de Datos Salvadora (MySQL)
🚀 Descripción
Este repositorio contiene los scripts SQL para crear y poblar la base de datos Salvadora en MySQL.
Incluye la definición de cinco tablas principales (CLIENTE, PRODUCTO, PROVEEDOR, COMPRA, PROVEE) y ejemplos de inserción de registros.

📂 Contenido del repositorio
Código
├── scripts/
│   ├── schema.sql      # Definición de tablas
│   ├── data.sql        # Inserción de datos
│   └── queries.sql     # Consultas de práctica
└── README.md           # Documentación del proyecto
⚙️ Requisitos
MySQL Server 8.0 o superior

Cliente de línea de comandos (mysql) o MySQL Workbench

Git para clonar el repositorio

📥 Instalación
Clonar el repositorio:

bash
git clone https://github.com/usuario/salvadora-mysql.git
cd salvadora-mysql
Crear la base de datos:

sql
CREATE DATABASE salvadora;
USE salvadora;
Ejecutar los scripts:

bash
mysql -u usuario -p salvadora < scripts/schema.sql
mysql -u usuario -p salvadora < scripts/data.sql
🛠️ Tablas principales
CLIENTE: Información de clientes (CI, nombre, apellido, dirección, teléfono).

PRODUCTO: Catálogo de productos (COD_PRODUCTO, nombre, marca, color, modelo, stock, precio).

PROVEEDOR: Datos de proveedores (ID_PROVEEDOR, nombre, dirección, teléfono).

COMPRA: Relación entre clientes y productos adquiridos.

PROVEE: Relación entre proveedores y productos suministrados.

📖 Ejemplos de consultas
Listar todos los clientes:

sql
SELECT * FROM CLIENTE;
Ver productos con stock mayor a 20:

sql
SELECT NOMBRE, STOCK FROM PRODUCTO WHERE STOCK > 20;
Mostrar compras realizadas en agosto de 2019:

sql
SELECT * FROM COMPRA WHERE FECHA_COMPRA BETWEEN '2019-08-01' AND '2019-08-31';
🤝 Contribución
Haz un fork del repositorio.

Crea una rama para tus cambios:

bash
git checkout -b 
