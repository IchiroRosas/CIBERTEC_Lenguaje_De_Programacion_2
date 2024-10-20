
-- activamos la bd
USE bd_lab06_lp2;


-- Insertar usuarios
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('amino', 'password1');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('fbraga', 'password2');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('eayala', 'password3');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('mremuzgo', 'password4');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('jcaceres', 'password5');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('jelescano', 'password6');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('plopez', 'password7');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('pore', 'password8');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('mcabana', 'password9');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('rsanchez', 'password10');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('gcueto', 'password11');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('wsalguero', 'password12');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('vruiz', 'password13');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('paleman', 'password14');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('mrau', 'password15');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('hnieva', 'password16');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('vguzman', 'password17');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('equiel', 'password18');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('fgomez', 'password19');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('kflores', 'password20');

INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('jhernandez', 'password21');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('pgarcia', 'password22');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('mmartinez', 'password23');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('arodriguez', 'password24');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('llopez', 'password25');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('cdiaz', 'password26');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('sromero', 'password27');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('lsanchez', 'password28');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('mgonzalez', 'password29');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('aperez', 'password30');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('dlopez', 'password31');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('rgomez', 'password32');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('fhernandez', 'password33');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('ggonzalez', 'password34');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('jmartinez', 'password35');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('pperez', 'password36');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('rosanchez', 'password37');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('emdiaz', 'password38');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('rtorres', 'password39');
INSERT INTO `tb_usuario` (`nombre_usuario`, `contrasena`) VALUES ('acastro', 'password40');

-- Insertar  empleado
-- Insertar empleado con correos electrónicos generados
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Trujillo', 'Mino', 'Jr. Hernan Crespo 322', '2019-10-10', 'Aida', '1850', 'aida.mino@hipermaxi.com', 1);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Torres', 'Braga', 'Jr. Tarma 433', '2015-09-09', 'Fabiola', '2500', 'fabiola.braga@hipermaxi.com', 2);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Paredes', 'Ayala', 'Jr. Tacna 652', '1999-01-01', 'Ernesto', '4500', 'ernesto.ayala@hipermaxi.com', 3);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Palomino', 'Remuzgo', 'Jr. Rambla 845', '2010-10-03', 'Miluska', '3800', 'miluska.remuzgo@hipermaxi.com', 4);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Gutierrez', 'Caceres', 'Av Javier Prado 75', '2015-12-15', 'José', '3200', 'jose.caceres@hipermaxi.com', 5);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Suarez', 'Elescano', 'Av. Tomas Valle', '2016-06-07', 'Juan', '4200', 'juan.elescano@hipermaxi.com', 6);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Cahuana', 'Lopez', 'Av. Angamos 785', '2017-10-08', 'Patricia', '3600', 'patricia.lopez@hipermaxi.com', 7);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Adama', 'Ore', 'Jr. Alfonso Ugarte', '2019-05-07', 'Pablo', '2650', 'pablo.ore@hipermaxi.com', 8);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Trejo', 'Cabana', 'Jr. Salaverry 621', '2016-12-12', 'Maria', '1600', 'maria.cabana@hipermaxi.com', 9);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Quiroz', 'Sanchez', 'Jr. Panama 785', '2020-10-01', 'Roy', '3450', 'roy.sanchez@hipermaxi.com', 10);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Rivera', 'Cueto', 'Jr. Lima 7884', '2020-10-19', 'Gabriela', '3500', 'gabriela.cueto@hipermaxi.com', 11);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Mamani', 'Salguero', 'Av. Puno 784', '2010-11-01', 'Wilber', '3500', 'wilber.salguero@hipermaxi.com', 12);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Ascue', 'Ruiz', 'Av. Miroquesada 632', '2016-10-30', 'Victor', '4500', 'victor.ruiz@hipermaxi.com', 13);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Zegarra', 'Aleman', 'Av. Tumbes 4523', '2011-11-28', 'Patricia', '1200', 'patricia.aleman@hipermaxi.com', 14);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Cavero', 'Rau', 'Jr. Pacheco 852', '2010-06-19', 'Mario', '3500', 'mario.rau@hipermaxi.com', 15);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Maximiliano', 'Nieva', 'Av. Tarma 963', '2014-01-01', 'Hugo', '4500', 'hugo.nieva@hipermaxi.com', 16);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Jimenez', 'Guzman', 'Av. Argentica 7532', '2016-02-02', 'Valeri', '3200', 'valeri.guzman@hipermaxi.com', 17);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Quiroz', 'Quiel', 'Av. Chile 123', '2013-01-22', 'Erika', '3200', 'erika.quiel@hipermaxi.com', 18);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Valdez', 'Gomez', 'Av. Mexico 741', '2010-12-12', 'Jessica', '6500', 'jessica.gomez@hipermaxi.com', 19);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `email`, `id_usuario`) 
VALUES ('Guzman', 'Flores', 'Av. Jauja 8524', '2011-01-18', 'Karla', '4500', 'karla.flores@hipermaxi.com', 20);


INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Lopez', 'Hernandez', 'Calle Morelos 123', '2012-05-20', 'Juan', '7000', 21, 'juan.hernandez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Perez', 'Garcia', 'Av. Reforma 456', '2013-03-15', 'Pedro', '6000', 22, 'pedro.garcia@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Gomez', 'Martinez', 'Av. Hidalgo 789', '2014-02-10', 'Maria', '5500', 23, 'maria.martinez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Sánchez', 'Rodríguez', 'Calle Juarez 321', '2015-09-28', 'Ana', '5000', 24, 'ana.rodriguez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Gonzalez', 'Lopez', 'Av. Revolución 654', '2016-07-14', 'Luis', '4800', 25, 'luis.lopez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Torres', 'Diaz', 'Calle Guerrero 987', '2017-11-03', 'Carlos', '5300', 26, 'carlos.diaz@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Castillo', 'Romero', 'Av. Cuauhtémoc 741', '2018-04-30', 'Sofia', '4700', 27, 'sofia.romero@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Hernandez', 'Sanchez', 'Av. Insurgentes 852', '2019-08-22', 'Laura', '5100', 28, 'laura.sanchez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Dominguez', 'Gonzalez', 'Calle Constitución 369', '2020-10-17', 'Miguel', '5900', 29, 'miguel.gonzalez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Ramirez', 'Perez', 'Av. Independencia 258', '2021-12-05', 'Alejandro', '6200', 30, 'alejandro.perez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Fernandez', 'Lopez', 'Calle Veracruz 147', '2022-06-11', 'Diana', '5700', 31, 'diana.lopez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Martinez', 'Gomez', 'Av. Puebla 369', '2012-07-03', 'Raul', '6400', 32, 'raul.gomez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Garcia', 'Hernandez', 'Av. Michoacán 852', '2013-09-19', 'Fernando', '6900', 33, 'fernando.hernandez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Luna', 'Gonzalez', 'Calle Monterrey 741', '2014-11-27', 'Gabriela', '6300', 34, 'gabriela.gonzalez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Cruz', 'Martinez', 'Av. Toluca 963', '2015-04-14', 'Javier', '6800', 35, 'javier.martinez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Vazquez', 'Perez', 'Av. Guadalajara 852', '2016-08-02', 'Paula', '5400', 36, 'paula.perez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Reyes', 'Sanchez', 'Av. Veracruz 357', '2017-10-19', 'Roberto', '5900', 37, 'roberto.sanchez@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Morales', 'Diaz', 'Calle Oaxaca 147', '2018-12-07', 'Elena', '5600', 38, 'elena.diaz@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Santos', 'Torres', 'Av. Tamaulipas 852', '2019-06-24', 'Rosa', '6200', 39, 'rosa.torres@hipermaxi.com');

INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`, `email`) 
VALUES ('Ortega', 'Castro', 'Av. Sonora 369', '2020-08-13', 'Arturo', '6700', 40, 'arturo.castro@hipermaxi.com');


-- Insertar  capacitación
INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('C# ASP NET CORE', '2024-02-01', '2024-02-28', 1, 8);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Java Avanzado', '2024-04-10', '2024-04-30', 0, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Python para Ciencia de Datos', '2024-03-05', '2024-03-25', 1, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('SQL Avanzado', '2024-03-15', '2024-04-10', 0, 4);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Desarrollo Web con React.js', '2024-04-01', '2024-04-20', 1, 7);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Machine Learning Fundamentals', '2024-04-15', '2024-05-10', 0, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Gestión de Proyectos con Agile', '2024-05-01', '2024-05-25', 1, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('JavaScript Avanzado', '2024-05-10', '2024-05-30', 0, 4);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Introducción a la Ciberseguridad', '2024-06-01', '2024-06-20', 1, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Análisis de Datos con R', '2024-06-10', '2024-06-30', 0, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Desarrollo de Aplicaciones Móviles', '2024-07-01', '2024-07-25', 1, 7);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Cloud Computing Fundamentals', '2024-07-15', '2024-08-05', 0, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Redes Neuronales Artificiales', '2024-08-01', '2024-08-20', 1, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Administración de Bases de Datos', '2024-08-15', '2024-09-05', 0, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Desarrollo Ágil con Scrum', '2024-09-01', '2024-09-25', 1, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Inteligencia Artificial aplicada', '2024-09-10', '2024-09-30', 0, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Programación Orientada a Objetos', '2024-10-01', '2024-10-25', 1, 5);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Desarrollo de Aplicaciones Web', '2024-10-15', '2024-11-05', 0, 7);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Big Data Analytics', '2024-11-01', '2024-11-20', 1, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Seguridad Informática Avanzada', '2024-11-10', '2024-11-30', 0, 6);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Desarrollo de Software Empresarial', '2024-12-01', '2024-12-25', 1, 7);

 
 -- Insertar  capacitación empleado
INSERT INTO `tb_emp_capa` VALUES (1, 1);
INSERT INTO `tb_emp_capa` VALUES (2, 1);
INSERT INTO `tb_emp_capa` VALUES (3, 1);
INSERT INTO `tb_emp_capa` VALUES (4, 1);
INSERT INTO `tb_emp_capa` VALUES (5, 1);
INSERT INTO `tb_emp_capa` VALUES (6, 1);
INSERT INTO `tb_emp_capa` VALUES (7, 1);
INSERT INTO `tb_emp_capa` VALUES (8, 1);

 
INSERT INTO `tb_emp_capa` VALUES (1, 2);
INSERT INTO `tb_emp_capa` VALUES (2, 2);
INSERT INTO `tb_emp_capa` VALUES (3, 2);
INSERT INTO `tb_emp_capa` VALUES (4, 2);
INSERT INTO `tb_emp_capa` VALUES (5, 2);
INSERT INTO `tb_emp_capa` VALUES (6, 2);
INSERT INTO `tb_emp_capa` VALUES (7, 2);
INSERT INTO `tb_emp_capa` VALUES (8, 2);
INSERT INTO `tb_emp_capa` VALUES (9, 2);
INSERT INTO `tb_emp_capa` VALUES (10, 2);
INSERT INTO `tb_emp_capa` VALUES (11, 2);
INSERT INTO `tb_emp_capa` VALUES (12, 2);
INSERT INTO `tb_emp_capa` VALUES (13, 2);
INSERT INTO `tb_emp_capa` VALUES (14, 2);
INSERT INTO `tb_emp_capa` VALUES (15, 2);
INSERT INTO `tb_emp_capa` VALUES (16, 2);
INSERT INTO `tb_emp_capa` VALUES (17, 2);
INSERT INTO `tb_emp_capa` VALUES (18, 2);
INSERT INTO `tb_emp_capa` VALUES (19, 2);
INSERT INTO `tb_emp_capa` VALUES (20, 2);

INSERT INTO `tb_emp_capa` VALUES (21, 3);
INSERT INTO `tb_emp_capa` VALUES (22, 3);
INSERT INTO `tb_emp_capa` VALUES (23, 3);
INSERT INTO `tb_emp_capa` VALUES (24, 3);
INSERT INTO `tb_emp_capa` VALUES (25, 3);
INSERT INTO `tb_emp_capa` VALUES (26, 3);
INSERT INTO `tb_emp_capa` VALUES (27, 3);
INSERT INTO `tb_emp_capa` VALUES (28, 3);
INSERT INTO `tb_emp_capa` VALUES (29, 3);
INSERT INTO `tb_emp_capa` VALUES (30, 3);

INSERT INTO `tb_emp_capa` VALUES (31, 4);
INSERT INTO `tb_emp_capa` VALUES (32, 4);
INSERT INTO `tb_emp_capa` VALUES (33, 4);
INSERT INTO `tb_emp_capa` VALUES (34, 4);
INSERT INTO `tb_emp_capa` VALUES (35, 4);
INSERT INTO `tb_emp_capa` VALUES (36, 4);
INSERT INTO `tb_emp_capa` VALUES (37, 4);
INSERT INTO `tb_emp_capa` VALUES (38, 4);
INSERT INTO `tb_emp_capa` VALUES (39, 4);
INSERT INTO `tb_emp_capa` VALUES (40, 4);


INSERT INTO `tb_emp_capa` VALUES (1, 5);
INSERT INTO `tb_emp_capa` VALUES (12, 5);
INSERT INTO `tb_emp_capa` VALUES (2, 5);
INSERT INTO `tb_emp_capa` VALUES (13, 5);
INSERT INTO `tb_emp_capa` VALUES (3, 5);
INSERT INTO `tb_emp_capa` VALUES (18, 5);
INSERT INTO `tb_emp_capa` VALUES (10, 5);
INSERT INTO `tb_emp_capa` VALUES (20, 5);
INSERT INTO `tb_emp_capa` VALUES (33, 5);
INSERT INTO `tb_emp_capa` VALUES (35, 5);


INSERT INTO `tb_emp_capa` VALUES (10, 6);
INSERT INTO `tb_emp_capa` VALUES (13, 6);
INSERT INTO `tb_emp_capa` VALUES (21, 6);
INSERT INTO `tb_emp_capa` VALUES (33, 6);
INSERT INTO `tb_emp_capa` VALUES (30, 6);
INSERT INTO `tb_emp_capa` VALUES (28, 6);
INSERT INTO `tb_emp_capa` VALUES (15, 6);
INSERT INTO `tb_emp_capa` VALUES (29, 6);
INSERT INTO `tb_emp_capa` VALUES (34, 6);
INSERT INTO `tb_emp_capa` VALUES (39, 6);


INSERT INTO `tb_emp_capa` VALUES (1, 7);
INSERT INTO `tb_emp_capa` VALUES (2, 7);
INSERT INTO `tb_emp_capa` VALUES (3, 7);
INSERT INTO `tb_emp_capa` VALUES (4, 7);
INSERT INTO `tb_emp_capa` VALUES (5, 7);
INSERT INTO `tb_emp_capa` VALUES (6, 7);
INSERT INTO `tb_emp_capa` VALUES (7, 7);
INSERT INTO `tb_emp_capa` VALUES (8, 7);
INSERT INTO `tb_emp_capa` VALUES (9, 7);
INSERT INTO `tb_emp_capa` VALUES (10, 7);

INSERT INTO `tb_emp_capa` VALUES (40, 8);
INSERT INTO `tb_emp_capa` VALUES (39, 8);
INSERT INTO `tb_emp_capa` VALUES (38, 8);
INSERT INTO `tb_emp_capa` VALUES (37, 8);
INSERT INTO `tb_emp_capa` VALUES (36, 8);
INSERT INTO `tb_emp_capa` VALUES (35, 8);
INSERT INTO `tb_emp_capa` VALUES (34, 8);
INSERT INTO `tb_emp_capa` VALUES (33, 8);
INSERT INTO `tb_emp_capa` VALUES (32, 8);
INSERT INTO `tb_emp_capa` VALUES (31, 8);

INSERT INTO `tb_emp_capa` VALUES (10, 9);
INSERT INTO `tb_emp_capa` VALUES (11, 9);
INSERT INTO `tb_emp_capa` VALUES (23, 9);
INSERT INTO `tb_emp_capa` VALUES (24, 9);
INSERT INTO `tb_emp_capa` VALUES (25, 9);
INSERT INTO `tb_emp_capa` VALUES (32, 9);
INSERT INTO `tb_emp_capa` VALUES (27, 9);
INSERT INTO `tb_emp_capa` VALUES (28, 9);
INSERT INTO `tb_emp_capa` VALUES (33, 9);
INSERT INTO `tb_emp_capa` VALUES (30, 9);

INSERT INTO `tb_emp_capa` VALUES (10, 10);
INSERT INTO `tb_emp_capa` VALUES (11, 10);
INSERT INTO `tb_emp_capa` VALUES (12, 10);
INSERT INTO `tb_emp_capa` VALUES (13, 10);
INSERT INTO `tb_emp_capa` VALUES (14, 10);
INSERT INTO `tb_emp_capa` VALUES (15, 10);
INSERT INTO `tb_emp_capa` VALUES (16, 10);
INSERT INTO `tb_emp_capa` VALUES (17, 10);
INSERT INTO `tb_emp_capa` VALUES (18, 10);
INSERT INTO `tb_emp_capa` VALUES (19, 10);
INSERT INTO `tb_emp_capa` VALUES (20, 10);

INSERT INTO `tb_emp_capa` VALUES (10, 11);
INSERT INTO `tb_emp_capa` VALUES (13, 11);
INSERT INTO `tb_emp_capa` VALUES (21, 11);
INSERT INTO `tb_emp_capa` VALUES (33, 11);
INSERT INTO `tb_emp_capa` VALUES (30, 11);
INSERT INTO `tb_emp_capa` VALUES (28, 11);
INSERT INTO `tb_emp_capa` VALUES (15, 11);
INSERT INTO `tb_emp_capa` VALUES (29, 11);
INSERT INTO `tb_emp_capa` VALUES (34, 11);
INSERT INTO `tb_emp_capa` VALUES (39, 11);
 
 
 
INSERT INTO `tb_emp_capa` VALUES (36, 12);
INSERT INTO `tb_emp_capa` VALUES (35, 12);
INSERT INTO `tb_emp_capa` VALUES (34, 12);
INSERT INTO `tb_emp_capa` VALUES (33, 12);
INSERT INTO `tb_emp_capa` VALUES (32, 12);
INSERT INTO `tb_emp_capa` VALUES (31, 12);
INSERT INTO `tb_emp_capa` VALUES (10, 12);
INSERT INTO `tb_emp_capa` VALUES (11, 12);
INSERT INTO `tb_emp_capa` VALUES (23, 12);
INSERT INTO `tb_emp_capa` VALUES (24, 12);
INSERT INTO `tb_emp_capa` VALUES (25, 12);


INSERT INTO `tb_emp_capa` VALUES (30, 13);
INSERT INTO `tb_emp_capa` VALUES (28, 13);
INSERT INTO `tb_emp_capa` VALUES (15, 13);
INSERT INTO `tb_emp_capa` VALUES (29, 13);
INSERT INTO `tb_emp_capa` VALUES (34, 13);
INSERT INTO `tb_emp_capa` VALUES (39, 13);
INSERT INTO `tb_emp_capa` VALUES (1, 13);
INSERT INTO `tb_emp_capa` VALUES (2, 13);
INSERT INTO `tb_emp_capa` VALUES (3, 13);


-- Vacaciones
 
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-04-01', '2024-04-05', 0, 1);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-04-10', '2024-04-15', 0, 2);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-04-20', '2024-04-25', 0, 3);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-05-01', '2024-05-05', 0, 4);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-05-10', '2024-05-15', 0, 5);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-05-20', '2024-05-25', 0, 6);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-06-01', '2024-06-05', 0, 7);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-06-10', '2024-06-15', 0, 8);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-06-20', '2024-06-25', 0, 9);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-07-01', '2024-07-05', 0, 10);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-10-01', '2024-10-05', 2, 11);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-10-10', '2024-10-15', 2, 12);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-10-20', '2024-10-25', 0, 13);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-10-30', '2024-11-05', 0, 14);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-11-10', '2024-11-15', 1, 15);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-11-20', '2024-11-25', 1, 16);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2024-12-01', '2024-12-05', 2, 17);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2024-12-10', '2024-12-15', 2, 18);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-01-01', '2025-01-05', 0, 19);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-01-10', '2025-01-15', 0, 20);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-01-20', '2025-01-25', 1, 21);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-02-01', '2025-02-05', 1, 22);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-02-10', '2025-02-15', 2, 23);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-02-20', '2025-02-25', 2, 24);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-03-01', '2025-03-05', 0, 25);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-03-10', '2025-03-15', 0, 26);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-03-20', '2025-03-25', 1, 27);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-03-30', '2025-04-05', 1, 28);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-04-10', '2025-04-15', 2, 29);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-04-20', '2025-04-25', 2, 30);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-05-01', '2025-05-05', 0, 31);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2022, '2025-05-10', '2025-05-15', 0, 32);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-05-20', '2025-05-25', 1, 33);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-05-30', '2025-06-05', 1, 34);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-06-10', '2025-06-15', 2, 35);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-06-20', '2025-06-25', 2, 36);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-07-01', '2025-07-05', 0, 37);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-07-10', '2025-07-15', 0, 38);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-07-20', '2025-07-25', 1, 39);
INSERT INTO tb_vacacion (periodo, fecha_inicio, fecha_fin, estado, id_empleado) VALUES (2023, '2025-07-30', '2025-08-05', 1, 40);
