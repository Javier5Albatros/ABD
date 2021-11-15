CREATE ROLE lector;
GRANT SELECT ON pracabd1.* TO lector;

REVOKE comercial FROM Santiago;
REVOKE secretario FROM Miriam;

GRANT lector TO Santiago;
GRANT lector TO Miriam;