CREATE INDEX Personas_Index ON personas (Apellidos(10));
DROP INDEX Personas_Index ON personas;
CREATE INDEX Provincia_Index ON personas(Provincia);
DROP INDEX Provincia_Index ON personas;
CREATE INDEX Edicion_Index ON cursos(edicion);
DROP INDEX Edicion_Index ON cursos;