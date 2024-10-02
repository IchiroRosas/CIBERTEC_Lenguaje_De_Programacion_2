-- borra la bd si existe
DROP DATABASE IF EXISTS tienda;
-- Crear base de datos
CREATE DATABASE tienda;
-- activamos la bd
USE tienda;

-- Crear tabla categoria
CREATE TABLE categoria (
    idcategoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY (idcategoria)
);

-- Crear tabla cliente
CREATE TABLE cliente (
    idcliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    correo VARCHAR(45),
    fechanacimiento DATE,
    dni VARCHAR(45),
    idcategoria INT,
    PRIMARY KEY (idcliente),
    CONSTRAINT fk_cliente_categoria FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);

-- Insertar datos en la tabla categoria
INSERT INTO categoria (nombre) VALUES ('Regular');
INSERT INTO categoria (nombre) VALUES ('VIP');
INSERT INTO categoria (nombre) VALUES ('Premium');
INSERT INTO categoria (nombre) VALUES ('Gold');
INSERT INTO categoria (nombre) VALUES ('Silver');

-- Insertar datos en la tabla cliente
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Juan', 'Pérez', 'juan.perez@gmail.com', '1985-05-20', '12345678', 1);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Ana', 'García', 'ana.garcia@gmail.com', '1990-08-10', '23456789', 2);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Carlos', 'López', 'carlos.lopez@gmail.com', '1988-11-15', '34567890', 3);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('María', 'Rodríguez', 'maria.rodriguez@gmail.com', '1992-02-25', '45678901', 4);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', '1987-09-30', '56789012', 5);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Laura', 'Mendoza', 'laura.mendoza@gmail.com', '1991-03-05', '67890123', 1);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Luis', 'Fernández', 'luis.fernandez@gmail.com', '1989-12-20', '78901234', 2);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Gloria', 'Torres', 'gloria.torres@gmail.com', '1995-07-18', '89012345', 3);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Diego', 'Ramírez', 'diego.ramirez@gmail.com', '1984-04-12', '90123456', 4);
INSERT INTO cliente (nombre, apellido, correo, fechanacimiento, dni, idcategoria) 
VALUES ('Marta', 'Hernández', 'marta.hernandez@gmail.com', '1993-01-25', '01234567', 5);