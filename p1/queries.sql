SELECT  DISTINCT email
FROM personas
WHERE nombre LIKE 'Ángeles'
AND apellidos LIKE 'del Nido';



SELECT  DISTINCT email
FROM personas
WHERE enParo = 0;



SELECT  COUNT(*)
FROM personas
WHERE provincia LIKE 'Lugo';



SELECT  personas.nombre
       ,apellidos
       ,area
       ,comentarios
FROM personas
INNER JOIN matriculados_interesados
ON matriculados_interesados.PersonaID = personas.PersonaID
INNER JOIN cursos
ON cursos.CursoID = matriculados_interesados.CursoID
WHERE provincia LIKE 'Madrid'
AND edicion = 2018
ORDER BY apellidos DESC
SELECT  Nombre
       ,Apellidos
       ,Email
FROM personas
WHERE PersonaID IN ( SELECT PersonaID FROM matriculados_interesados WHERE cursoID = 256 );



SELECT  email
FROM personas
INNER JOIN matriculados_interesados
ON matriculados_interesados.PersonaID = personas.PersonaID
INNER JOIN cursos
ON cursos.CursoID = matriculados_interesados.CursoID
WHERE canal = 1
AND edicion = 2020;



SELECT  telefono
FROM personas
INNER JOIN matriculados_interesados
ON matriculados_interesados.PersonaID = personas.PersonaID
WHERE Matriculado = 1
AND telefono NOT LIKE ''