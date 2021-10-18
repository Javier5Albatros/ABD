SELECT DISTINCT email from personas WHERE nombre LIKE
'Ángeles' AND apellidos LIKE 'del Nido';

SELECT DISTINCT email from personas WHERE enParo = 0;

SELECT COUNT(*) FROM personas WHERE provincia LIKE 'Lugo';

SELECT personas.nombre, apellidos, area, comentarios FROM 
personas INNER JOIN matriculados_interesados ON matriculados_interesados.PersonaID = personas.PersonaID
INNER JOIN cursos ON cursos.CursoID = matriculados_interesados.CursoID
WHERE provincia LIKE 'Madrid' AND edicion = 2018
ORDER BY apellidos DESC

SELECT Nombre,
    Apellidos,
    Email
FROM personas
WHERE PersonaID IN (
        SELECT PersonaID
        FROM matriculados_interesados
        WHERE cursoID = 256
    );