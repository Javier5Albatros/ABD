START TRANSACTION;
	SELECT * FROM personas;
    SELECT * FROM cursos WHERE CursoId =2;
COMMIT;

START TRANSACTION;
	SELECT * FROM cursos;
    UPDATE cursos SET area = "bbbb" WHERE CursoId =1;
COMMIT;

START TRANSACTION;
	UPDATE personas SET Nombre = "ALFREDO" WHERE PersonaId=1;
    UPDATE cursos SET area = "X" WHERE CursoId =1;
COMMIT;