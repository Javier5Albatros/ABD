ALTER TABLE personas ADD PRIMARY KEY(PersonaID);
ALTER TABLE cursos ADD PRIMARY KEY(CursoID);
ALTER TABLE matriculados_interesados ADD PRIMARY KEY(PersonaID, CursoID);