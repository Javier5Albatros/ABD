CREATE TABLE IF NOT EXISTS `PracABD1`.`personas` (
  `PersonaID` INT NOT NULL,
  `Dni` VARCHAR(9) UNIQUE NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Apellidos` VARCHAR(30) NOT NULL,
  `Genero` VARCHAR(1) NULL,
  `Direccion` VARCHAR(60) NULL,
  `Localidad` VARCHAR(50) NULL,
  `Provincia` VARCHAR(30) NULL,
  `CodPostal` INT NULL,
  `Telefono` VARCHAR(9) NULL,
  `EnParo` BOOLEAN NULL,
  `Canal` INT NULL,
  `FechaNac` DATE NULL,
  `Email` VARCHAR(60) NULL,
  CONSTRAINT CHECK (Genero IN ('H', 'M')), 
  CONSTRAINT CHECK (EnParo IN (0, 1)), 
  CONSTRAINT CHECK (Canal IN (0, 1, 2, 3, 4))) 
  TABLESPACE ABDDBA_TBLS_personas
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `PracABD1`.`cursos` (
  `CursoID` INT NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  `area` VARCHAR(30) NULL,
  `edicion` INT NOT NULL,
  CONSTRAINT CHECK (edicion BETWEEN 2013 AND 2020 OR edicion LIKE 1492))
  TABLESPACE ABDDBA_TBLS_cursos
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `PracABD1`.`matriculados_interesados` (
  `PersonaID` INT NOT NULL,
  `CursoID` INT NOT NULL,
  `matriculado` TINYINT NULL,
  `comentarios` VARCHAR(500) NULL,
  CONSTRAINT CHECK (matriculado LIKE 1 OR NULL))
  TABLESPACE ABDDBA_TBLS_matriculados
ENGINE = InnoDB;
