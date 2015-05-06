-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema proxecColec
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proxecColec
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proxecColec` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `proxecColec` ;

-- -----------------------------------------------------
-- Table `proxecColec`.`anho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`anho` (
  `anhId` INT NOT NULL AUTO_INCREMENT,
  `anhAnho` VARCHAR(45) NULL,
  `anhEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`anhId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`usuario` (
  `usuId` INT NOT NULL AUTO_INCREMENT,
  `usuNom` VARCHAR(45) NULL,
  `usuApe` VARCHAR(100) NULL,
  `usuDni` VARCHAR(9) NULL,
  `usuTel` VARCHAR(13) NULL,
  `usuDir` VARCHAR(100) NULL,
  `usuPob` VARCHAR(45) NULL,
  `usuPas` VARCHAR(15) NULL,
  `usuEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`usuId`),
  INDEX `usuDni` (`usuDni` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`ciclo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`ciclo` (
  `cicID` INT NOT NULL AUTO_INCREMENT,
  `cicNom` VARCHAR(45) NOT NULL,
  `cicEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`cicID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`asignatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`asignatura` (
  `asiID` INT NOT NULL AUTO_INCREMENT,
  `asiCicID` INT NOT NULL,
  `asiNom` VARCHAR(45) NULL,
  `asiEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`asiID`),
  INDEX `fk_asignatura_ciclo1_idx` (`asiCicID` ASC),
  CONSTRAINT `fk_asignatura_ciclo1`
    FOREIGN KEY (`asiCicID`)
    REFERENCES `proxecColec`.`ciclo` (`cicID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`asi_Pro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`asi_Pro` (
  `asiPro_anhId` INT NOT NULL,
  `asiPro_asiID` INT NOT NULL,
  `asiPro_usuId` INT NOT NULL,
  PRIMARY KEY (`asiPro_anhId`, `asiPro_asiID`, `asiPro_usuId`),
  INDEX `fk_asi_Pro_asignatura1_idx` (`asiPro_asiID` ASC),
  INDEX `fk_asi_Pro_anho1_idx` (`asiPro_anhId` ASC),
  INDEX `fk_asi_Pro_usuario1_idx` (`asiPro_usuId` ASC),
  CONSTRAINT `fk_asi_Pro_asignatura1`
    FOREIGN KEY (`asiPro_asiID`)
    REFERENCES `proxecColec`.`asignatura` (`asiID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_asi_Pro_anho1`
    FOREIGN KEY (`asiPro_anhId`)
    REFERENCES `proxecColec`.`anho` (`anhId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_asi_Pro_usuario1`
    FOREIGN KEY (`asiPro_usuId`)
    REFERENCES `proxecColec`.`usuario` (`usuId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`rol` (
  `rolID` INT NOT NULL AUTO_INCREMENT,
  `rolNom` VARCHAR(45) NULL,
  `rolEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`rolID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`rol_Usu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`rol_Usu` (
  `rolUsu_usuID` INT NOT NULL,
  `rolUsu_rolID` INT NOT NULL,
  PRIMARY KEY (`rolUsu_usuID`, `rolUsu_rolID`),
  INDEX `fk_rol_has_usuario_rol1_idx` (`rolUsu_rolID` ASC),
  CONSTRAINT `fk_rol_has_usuario_rol1`
    FOREIGN KEY (`rolUsu_rolID`)
    REFERENCES `proxecColec`.`rol` (`rolID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rol_has_usuario_usuario1`
    FOREIGN KEY (`rolUsu_usuID`)
    REFERENCES `proxecColec`.`usuario` (`usuId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`evaluacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`evaluacion` (
  `evaId` INT NOT NULL AUTO_INCREMENT,
  `evaAnhId` INT NOT NULL,
  `evaNom` VARCHAR(45) NULL,
  `evaFec` DATETIME NULL,
  `evaEst` INT NULL DEFAULT 0,
  PRIMARY KEY (`evaId`),
  INDEX `fk_evaluacion_anho1_idx` (`evaAnhId` ASC),
  CONSTRAINT `fk_evaluacion_anho1`
    FOREIGN KEY (`evaAnhId`)
    REFERENCES `proxecColec`.`anho` (`anhId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`nota` (
  `notId` INT NOT NULL AUTO_INCREMENT,
  `notNom` VARCHAR(45) NULL,
  PRIMARY KEY (`notId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`not_Alu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`not_Alu` (
  `notAlu_usuId` INT NOT NULL,
  `notAlu_asiID` INT NOT NULL,
  `notAlu_evaId` INT NOT NULL,
  `notAlu_notId` INT NOT NULL,
  `notAlu_texto` LONGTEXT NULL,
  PRIMARY KEY (`notAlu_usuId`, `notAlu_asiID`, `notAlu_evaId`, `notAlu_notId`),
  INDEX `fk_not_Alu_usuario1_idx` (`notAlu_usuId` ASC),
  INDEX `fk_not_Alu_asignatura1_idx` (`notAlu_asiID` ASC),
  INDEX `fk_not_Alu_evaluacion1_idx` (`notAlu_evaId` ASC),
  INDEX `fk_not_Alu_nota1_idx` (`notAlu_notId` ASC),
  CONSTRAINT `fk_not_Alu_usuario1`
    FOREIGN KEY (`notAlu_usuId`)
    REFERENCES `proxecColec`.`usuario` (`usuId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_not_Alu_asignatura1`
    FOREIGN KEY (`notAlu_asiID`)
    REFERENCES `proxecColec`.`asignatura` (`asiID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_not_Alu_evaluacion1`
    FOREIGN KEY (`notAlu_evaId`)
    REFERENCES `proxecColec`.`evaluacion` (`evaId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_not_Alu_nota1`
    FOREIGN KEY (`notAlu_notId`)
    REFERENCES `proxecColec`.`nota` (`notId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proxecColec`.`log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proxecColec`.`log` (
  `logID` INT NOT NULL AUTO_INCREMENT,
  `logUsuId` INT NOT NULL,
  `logFec` DATETIME NULL,
  `logAcc` VARCHAR(45) NULL,
  PRIMARY KEY (`logID`),
  INDEX `fk_log_usuario1_idx` (`logUsuId` ASC),
  CONSTRAINT `fk_log_usuario1`
    FOREIGN KEY (`logUsuId`)
    REFERENCES `proxecColec`.`usuario` (`usuId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
