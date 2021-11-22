SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

START transaction;
SELECT * FROM PERSONAS;
SELECT * FROM CURSOS;
UPDATE cursos SET area ="bbbbbb" WHERE CursoID = 1;
COMMIT;

START transaction;
SELECT * FROM cursos;
UPDATE cursos SET area ="asdaaaaaaaaaaaaaasd" WHERE CursoID = 1;
COMMIT; 