SELECT Nombre, Apellidos FROM personas ORDER BY Provincia;
SELECT COUNT(*) FROM personas WHERE Provincia LIKE 'Sevilla';
SELECT Email FROM personas WHERE Provincia LIKE 'Barcelona';
INSERT INTO personas(PersonaId, Dni, Nombre, Apellidos, Genero, Direccion, Localidad, Provincia, CodPostal, Telefono, EnParo, Canal, FechaNac, Email) VALUES(9999999, '06689065E', 'Aitor','Tormenta','H','','Madrid','Madrid',28000,666,0,1,'2001-06-20','pacosanz@gmail.com');

SELECT * FROM cursos ORDER BY area;
SELECT COUNT(*) as numeroCursos FROM cursos WHERE area = 'Big Data';
SELECT nombre FROM cursos WHERE area = 'Realidad Virtual';

INSERT INTO cursos(cursoId, nombre, area, edicion) VALUES(999999, 'Curso 9995', 'Inteligencia Artificial', 2020);