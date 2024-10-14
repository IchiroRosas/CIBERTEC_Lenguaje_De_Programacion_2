USE Autos2024;

INSERT INTO marca (descripcion) values ('SUBARU');
INSERT INTO marca (descripcion) values ('TOYOTA');
INSERT INTO marca (descripcion) values ('HONDA');

SELECT * FROM marca;

INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2023, 'Negro', 'SUV', 85000, 35, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2022, 'Blanco', 'Sedán', 75000, 20, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2021, 'Rojo', 'Hatchback', 68000, 15, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2020, 'Azul', 'SUV', 72000, 25, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2019, 'Gris', 'Pickup', 90000, 10, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2023, 'Negro', 'Coupé', 95000, 18, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2022, 'Verde', 'Sedán', 67000, 22, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2021, 'Blanco', 'SUV', 85000, 30, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2020, 'Rojo', 'Convertible', 98000, 8, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2019, 'Azul', 'Camioneta', 65000, 12, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2023, 'Gris', 'Sedán', 78000, 28, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2022, 'Negro', 'Hatchback', 69000, 19, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2021, 'Blanco', 'SUV', 86000, 33, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2020, 'Rojo', 'Pickup', 88000, 14, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2019, 'Azul', 'Coupé', 94000, 16, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2023, 'Gris', 'Convertible', 99000, 9, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2022, 'Negro', 'SUV', 87000, 27, 2);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2021, 'Verde', 'Sedán', 76000, 24, 3);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2020, 'Blanco', 'Hatchback', 67000, 13, 1);
INSERT INTO auto (anio_fabricacion, color, modelo, precio, stock, id_marca) VALUES (2019, 'Rojo', 'Camioneta', 93000, 17, 2);

Select * from auto;