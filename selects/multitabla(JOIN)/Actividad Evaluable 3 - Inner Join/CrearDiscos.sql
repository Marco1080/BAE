SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema discos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `discos` DEFAULT CHARACTER SET utf8 ;
USE `discos` ;

-- -----------------------------------------------------
-- Table `discos`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`cliente` (
  `id` INT(11) NOT NULL,
  `Nombre` VARCHAR(255) NULL DEFAULT NULL,
  `Email` VARCHAR(255) NULL DEFAULT NULL,
  `FechaNacimiento` DATETIME NULL DEFAULT NULL,
  `FechaRegistro` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `discos`.`interprete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`interprete` (
  `Interprete` VARCHAR(255) NULL DEFAULT NULL,
  `IdInterprete` INT(11) NOT NULL,
  PRIMARY KEY (`IdInterprete`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `discos`.`disco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`disco` (
  `IdDisco` INT(11) NOT NULL,
  `Titulo` VARCHAR(255) NULL DEFAULT NULL,
  `Agno` FLOAT NULL DEFAULT NULL,
  `IdInterprete` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IdDisco`),
  INDEX `FK_discointerprete` (`IdInterprete` ASC),
  CONSTRAINT `FK_discointerprete`
    FOREIGN KEY (`IdInterprete`)
    REFERENCES `discos`.`interprete` (`IdInterprete`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `discos`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`tipo` (
  `IdTipo` INT(11) NOT NULL,
  `tipo` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`IdTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `discos`.`discotipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`discotipo` (
  `Id` INT(11) NOT NULL,
  `IdDisco` INT(11) NULL DEFAULT NULL,
  `IdTipo` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `FK_discotipodisco` (`IdDisco` ASC),
  INDEX `FK_discotipotipo` (`IdTipo` ASC),
  CONSTRAINT `FK_discotipodisco`
    FOREIGN KEY (`IdDisco`)
    REFERENCES `discos`.`disco` (`IdDisco`),
  CONSTRAINT `FK_discotipotipo`
    FOREIGN KEY (`IdTipo`)
    REFERENCES `discos`.`tipo` (`IdTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `discos`.`puntuacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `discos`.`puntuacion` (
  `Id` INT(11) NOT NULL,
  `Idcliente` INT(11) NULL DEFAULT NULL,
  `iddisco` INT(11) NULL DEFAULT NULL,
  `Puntuacion` INT(11) NULL DEFAULT NULL,
  `Fecha` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `FK_puntuacioncliente` (`Idcliente` ASC),
  INDEX `FK_puntuaciondisco` (`iddisco` ASC),
  CONSTRAINT `FK_puntuacioncliente`
    FOREIGN KEY (`Idcliente`)
    REFERENCES `discos`.`cliente` (`id`),
  CONSTRAINT `FK_puntuaciondisco`
    FOREIGN KEY (`iddisco`)
    REFERENCES `discos`.`disco` (`IdDisco`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
