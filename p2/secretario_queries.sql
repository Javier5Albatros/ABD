UPDATE matriculados_interesados SET matriculado = 1 WHERE personaID = 1;
INSERT INTO CURSOS (CursoID, nombre, area, edicion) VALUES (90000, "Curso", "ABD", 2020);

UPDATE matriculados_interesados SET comentario = "Hola" WHERE personaID = 1;
DELETE FROM Cursos WHERE CursoID LIKE 90000;