CREATE USER Suplencia IDENTIFIED BY 'daniapruebanos';
GRANT SELECT ON pracabd1.cursos_suplencia TO Suplencia;
GRANT SELECT ON pracabd1.personas_suplencia TO Suplencia; 
GRANT INSERT ON pracabd1.cursos_suplencia TO Suplencia;
GRANT INSERT ON pracabd1.personas_suplencia TO Suplencia; 