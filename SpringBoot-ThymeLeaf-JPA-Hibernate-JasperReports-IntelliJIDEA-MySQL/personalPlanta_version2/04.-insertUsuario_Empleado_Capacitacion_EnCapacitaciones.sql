
-- activamos la bd
USE bd_lab05_lp2;


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

-- Insertar  empleado
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Trujillo', 'Mino', 'Jr. Hernan Crespo 322', '2019-10-10', 'Aida', '1850',1);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Torres', 'Braga', 'Jr. Tarma 433', '2015-09-09', 'Fabiola', '2500',2);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Paredes', 'Ayala', 'Jr. Tacna 652', '1999-01-01', 'Ernesto', '4500',3);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Palomino', 'Remuzgo', 'Jr. Rambla 845', '2010-10-03', 'Miluska', '3800',4);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Gutierrez', 'Caceres', 'Av Javier Prado 75', '2015-12-15', 'José', '3200',5);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Suarez', 'Elescano', 'Av. Tomas Valle', '2016-06-07', 'Juan', '4200',6);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Cahuana', 'Lopez', 'Av. Angamos 785', '2017-10-08', 'Patricia', '3600',7);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Adama', 'Ore', 'Jr. Alfonso Ugarte', '2019-05-07', 'Pablo', '2650',8);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Trejo', 'Cabana', 'Jr. Salaverry 621', '2016-12-12', 'Maria', '1600',9);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Quiroz', 'Sanchez', 'Jr. Panama 785', '2020-10-01', 'Roy', '3450',10);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Rivera', 'Cueto', 'Jr. Lima 7884', '2020-10-19', 'Gabriela', '3500',11);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Mamani', 'Salguero', 'Av. Puno 784', '2010-11-01', 'Wilber', '3500',12);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Ascue', 'Ruiz', 'Av. Miroquesada 632', '2016-10-30', 'Victor', '4500',13);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Zegarra', 'Aleman', 'Av. Tumbes 4523', '2011-11-28', 'Patricia', '1200',14);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Cavero', 'Rau', 'Jr. Pacheco 852', '2010-06-19', 'Mario', '3500',15);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Maximiliano', 'Nieva', 'Av. Tarma 963', '2014-01-01', 'Hugo', '4500',16);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Jimenez', 'Guzman', 'Av. Argentica 7532', '2016-02-02', 'Valeri', '3200',17);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Quiroz', 'Quiel', 'Av. Chile 123', '2013-01-22', 'Erika', '3200',18);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Valdez', 'Gomez', 'Av. Mexico 741', '2010-12-12', 'Jessica', '6500',19);
INSERT INTO `tb_empleado` (`ape_mat`, `ape_pat`, `direccion`, `fecha_ingreso`, `nombre`, `salario`, `id_usuario`) VALUES ('Guzman', 'Flores', 'Av. Jauja 8524', '2011-01-18', 'Karla', '4500',20);



-- Insertar  capacitación
INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('C# ASP NET CORE', '2024-02-01', '2024-02-28', 1, 8);

INSERT INTO tb_capacitacion (des_capacitacion, fecha_inicio, fecha_fin, estado, creditos)
VALUES ('Java Avanzado', '2024-04-10', '2024-04-30', 0, 5);




-- Capacitación 1 con 8 empleados
INSERT INTO  `tb_emp_capa` VALUES (1, 1);
INSERT INTO  `tb_emp_capa` VALUES (2, 1);
INSERT INTO  `tb_emp_capa` VALUES (3, 1);
INSERT INTO  `tb_emp_capa` VALUES (4, 1);
INSERT INTO  `tb_emp_capa` VALUES (5, 1);
INSERT INTO  `tb_emp_capa` VALUES (6, 1);
INSERT INTO  `tb_emp_capa` VALUES (7, 1);
INSERT INTO  `tb_emp_capa` VALUES (8, 1);

-- Capacitación 2 con 20 empleados
INSERT INTO  `tb_emp_capa` VALUES (1, 2);
INSERT INTO  `tb_emp_capa` VALUES (2, 2);
INSERT INTO  `tb_emp_capa` VALUES (3, 2);
INSERT INTO  `tb_emp_capa` VALUES (4, 2);
INSERT INTO  `tb_emp_capa` VALUES (5, 2);
INSERT INTO  `tb_emp_capa` VALUES (6, 2);
INSERT INTO  `tb_emp_capa` VALUES (7, 2);
INSERT INTO  `tb_emp_capa` VALUES (8, 2);
INSERT INTO  `tb_emp_capa` VALUES (9, 2);
INSERT INTO  `tb_emp_capa` VALUES (10, 2);
INSERT INTO  `tb_emp_capa` VALUES (11, 2);
INSERT INTO  `tb_emp_capa` VALUES (12, 2);
INSERT INTO  `tb_emp_capa` VALUES (13, 2);
INSERT INTO  `tb_emp_capa` VALUES (14, 2);
INSERT INTO  `tb_emp_capa` VALUES (15, 2);
INSERT INTO  `tb_emp_capa` VALUES (16, 2);
INSERT INTO  `tb_emp_capa` VALUES (17, 2);
INSERT INTO  `tb_emp_capa` VALUES (18, 2);
INSERT INTO  `tb_emp_capa` VALUES (19, 2);
INSERT INTO  `tb_emp_capa` VALUES (20, 2);
 
