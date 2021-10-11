ALTER TABLE matriculados_interesados 
ADD CONSTRAINT cursos_fk 
FOREIGN KEY (CursoID)
REFERENCES cursos(CursoID);

ALTER TABLE matriculados_interesados 
ADD CONSTRAINT personas_fk 
FOREIGN KEY (PersonaID)
REFERENCES personas(PersonaID);