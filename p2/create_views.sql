CREATE VIEW personas_suplencia AS 
    SELECT * FROM personas;

CREATE VIEW cursos_suplencia AS 
    SELECT CursoID, Nombre, Area FROM cursos WHERE edicion LIKE 2020;

GRANT INSERT ON  TO comercial;

ALTER TABLE cursos MODIFY COLUMN Edicion INT NOT NULL DEFAULT 2020;
