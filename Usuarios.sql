CREATE USER IF NOT EXISTS 'Administrador'@'localhost' IDENTIFIED BY '/Admin1234';
GRANT ALL PRIVILEGES ON * . * TO 'Administrador'@'localhost';

CREATE USER IF NOT EXISTS 'Empleado'@'localhost' IDENTIFIED BY '/Emp1234';
GRANT SELECT ON * . * TO 'Empleado'@'localhost';