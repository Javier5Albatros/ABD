CREATE TABLE IF NOT EXISTS `PracABD1`.`personas` (
  `PersonaID` INT NOT NULL,
  `Dni` INT UNIQUE NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Apellidos` VARCHAR(30) NOT NULL,
  `Genero` VARCHAR(1) NULL,
  `Direccion` VARCHAR(60) NULL,
  `Localidad` VARCHAR(50) NULL,
  `Provincia` VARCHAR(30) NULL,
  `CodPostal` INT NULL,
  `Telefono` VARCHAR(9) NULL,
  `EnParo` BOOLEAN NULL,
  `Canal` ENUM('0' , '1','2','3','4'),
  `FechaNac` DATE NULL,
  `Email` VARCHAR(60) NULL,
  CONSTRAINT CHECK (Genero IN ('H', 'M')), 
  CONSTRAINT CHECK (EnParo IN (0, 1)), 
  CONSTRAINT CHECK (Canal IN (0, 1, 2, 3, 4)), 
  PRIMARY KEY (`PersonaID`),
  UNIQUE INDEX `PersonaID_UNIQUE` (`PersonaID` ASC) VISIBLE)
  TABLESPACE ABDDBA_TBLS_personas
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `PracABD1`.`cursos` (
  `CursoID` INT NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  `area` VARCHAR(30) NULL,
  `edicion` INT NOT NULL,
  PRIMARY KEY (`CursoID`),
  CONSTRAINT CHECK (edicion BETWEEN 2013 AND 2020 OR edicion LIKE 1492),
  UNIQUE INDEX `CursoID_UNIQUE` (`CursoID` ASC) VISIBLE)
  TABLESPACE ABDDBA_TBLS_cursos
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `PracABD1`.`matriculados_interesados` (
  `PersonaID` INT NOT NULL,
  `CursoID` INT NOT NULL,
  `matriculado` TINYINT NULL,
  `comentarios` VARCHAR(500) NULL,
  PRIMARY KEY (`PersonaID`, `CursoID`),
  CONSTRAINT CHECK (matriculado LIKE 1 OR NULL),
  FOREIGN KEY (PersonaID) REFERENCES personas(PersonaID),
  FOREIGN KEY (CursoID) REFERENCES cursos(CursoID))
  TABLESPACE ABDDBA_TBLS_matriculados
ENGINE = InnoDB