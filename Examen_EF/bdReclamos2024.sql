-- borra la bd si existe
DROP DATABASE IF EXISTS crm_reclamos;
-- creamos la bd
CREATE DATABASE crm_reclamos;
-- activamos la bd
USE crm_reclamos;

insert into tb_tipo_documento values (null,'DNI');
insert into tb_tipo_documento values (null,'CARNET EXTRANJERÍA');
insert into tb_tipo_documento values (null,'PASAPORTE'); 

INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('jruiz', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('mtorres', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('amino', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('xtrujillo', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('plopez', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('rarnez', '123456',  1);
INSERT INTO tb_usuario (nombre_usuario, contrasena,estado) VALUES ('mpalomino', '123456',  1);

INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (1, '40502030', 'Juan', 'Palacios', 'Ruiz', '1975-01-02', 'jpalacios@gmail.com', 1);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (1, '41457849', 'María', 'Torres', 'Flores', '1980-06-06', 'mtorres@hotmail.com', 2);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (1, '48451237', 'Aida', 'Mino', 'Vargas', '1983-12-30', 'amino@gmail.com', 3);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (2, '0012455', 'Ximena', 'Trujillo', 'Porras', '1990-10-10', 'xtrujillo@gmail.com', 4);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (2, '0007894', 'Patricia', 'Lopez', 'Rivera', '1980-10-19', 'plopez@hotmail.com', 5);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (3, '61417851', 'Roberto', 'Arnez', 'Pajuelo', '1965-05-20', 'rpajuelo@gmail.com', 6);
INSERT INTO tb_cliente (id_tipo_doc, num_documento, nombre, ape_pat, ape_mat, fec_nacimiento, email, id_usuario) VALUES (3, '12457899', 'Marisol', 'Palomino', 'Suarez', '1980-06-14', 'mpalomino@hotmail.com', 7);

INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Problema de conexión');
INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Facturación incorrecta');
INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Mala calidad de servicio');
INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Cambio no autorizado de plan');
INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Cobertura insuficiente');
INSERT INTO tb_motivo_reclamo (des_motivo) VALUES ('Servicio al cliente deficiente');


INSERT INTO `crm_reclamos`.`tb_reclamo` (`id_motivo`, `id_cliente`, `fec_reclamo`, `des_reclamo`, `estado`) 
VALUES (1, 1, '2023-06-01', 'Problema con la conexión telefónica',1);
INSERT INTO `crm_reclamos`.`tb_reclamo` (`id_motivo`, `id_cliente`, `fec_reclamo`, `des_reclamo`, `estado`) 
VALUES (2, 1, '2023-06-06', 'La facturación del mes de mayo no esta bien calculada',1);
INSERT INTO `crm_reclamos`.`tb_reclamo` (`id_motivo`, `id_cliente`, `fec_reclamo`, `des_reclamo`, `estado`) 
VALUES (4, 2, '2023-05-10', 'Cambiaron el plan de telefonía sin autorización del cliente',1);
INSERT INTO `crm_reclamos`.`tb_reclamo` (`id_motivo`, `id_cliente`, `fec_reclamo`, `des_reclamo`, `estado`) 
VALUES (5, 2, '2023-06-06', 'La red de telefonía no llega al distrito de Hurahucho en Tarma',1);
INSERT INTO `crm_reclamos`.`tb_reclamo` (`id_motivo`, `id_cliente`, `fec_reclamo`, `des_reclamo`, `estado`) 
VALUES (6, 2, '2023-06-15', 'El servicio brindado en la agencia Lima Centro Cívico fue deficiente',1);