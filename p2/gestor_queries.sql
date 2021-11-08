SELECT personas.nombre,
       apellidos,
       area,
       comentarios
FROM   personas
       INNER JOIN matriculados_interesados
               ON matriculados_interesados.personaid = personas.personaid
       INNER JOIN cursos
               ON cursos.cursoid = matriculados_interesados.cursoid
WHERE  provincia LIKE 'Madrid';

SELECT email
FROM   personas
       INNER JOIN matriculados_interesados
               ON matriculados_interesados.personaid = personas.personaid
       INNER JOIN cursos
               ON cursos.cursoid = matriculados_interesados.cursoid
WHERE  canal = 1
       AND edicion = 2020;

CREATE DATABASE prueba;
CREATE TABLE prueba;