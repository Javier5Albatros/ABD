LOAD DATA LOCAL INFILE 'C:/Users/javie/Desktop/ABD/Personas.csv' INTO TABLE personas 
CHARACTER SET latin1 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n' 
(PersonaID, DNI, nombre, apellidos, genero, direccion, localidad, provincia, codPostal, telefono, EnParo, canal, @fechaProvisional, email) 
SET FechaNac = STR_TO_DATE(@fechaProvisional, '%d/%m/%Y');

LOAD DATA LOCAL INFILE 'C:/Users/javie/Desktop/ABD/Cursos.csv' INTO TABLE cursos 
CHARACTER SET latin1 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/javie/Desktop/ABD/Matriculados_Interesados.csv' INTO TABLE matriculados_interesados 
CHARACTER SET latin1 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';