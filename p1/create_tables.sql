CREATE TABLE IF NOT EXISTS `PracABD1`.`cursos` (
  `CursoID` INT NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  `area` VARCHAR(30) NULL,
  `edicion` INT NOT NULL,
  PRIMARY KEY (`CursoID`),
  UNIQUE INDEX `CursoID_UNIQUE` (`CursoID` ASC) VISIBLE)
  TABLESPACE ABDDBA_TBLS_cursos
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `PracABD1`.`personas` (
  `PersonaID` INT NOT NULL,
  `Dni`int unique not null,
  `Nombre` VARCHAR(20) NOT NULL,
  `Apellido` VARCHAR(30) not NULL,
  `Genero` varchar(1) NOT NULL,
   `Direccion` VARCHAR(60) NULL,
    `Localidad` VARCHAR(50) NULL,
     `Provincia` VARCHAR(30) NULL,
     `CodPostal`int not null,
     `Telefono` varchar(9) null,
     `EnParo`  boolean not null,
     `Canal` enum('0' , '1','2','3','4'),
     `FechaNac` date not null,
	 `Email` varchar(60) not null,
  PRIMARY KEY (`PersonaID`),
  UNIQUE INDEX `PersonaID_UNIQUE` (`PersonaID` ASC) VISIBLE)
  TABLESPACE ABDDBA_TBLS_personas
ENGINE = InnoDB;
