-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab10_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab10_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab10_bd` DEFAULT CHARACTER SET utf8 ;
USE `lab10_bd` ;

-- -----------------------------------------------------
-- Table `lab10_bd`.`Images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab10_bd`.`Images` (
  `idImage` INT NOT NULL AUTO_INCREMENT,
  `path` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idImage`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab10_bd`.`GameParametes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab10_bd`.`GameParametes` (
  `idGame` INT NOT NULL AUTO_INCREMENT,
  `numFilas` INT NOT NULL,
  `numCol` INT NOT NULL,
  `numImg` INT NOT NULL,
  PRIMARY KEY (`idGame`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab10_bd`.`GameData`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab10_bd`.`GameData` (
  `idData` INT NOT NULL AUTO_INCREMENT,
  `fila` INT NOT NULL,
  `columna` INT NOT NULL,
  `idGame` INT NOT NULL,
  `idImage` INT NOT NULL,
  PRIMARY KEY (`idData`),
  INDEX `fk_GameData_GameParametes_idx` (`idGame` ASC) VISIBLE,
  INDEX `fk_GameData_Images1_idx` (`idImage` ASC) VISIBLE,
  CONSTRAINT `fk_GameData_GameParametes`
    FOREIGN KEY (`idGame`)
    REFERENCES `lab10_bd`.`GameParametes` (`idGame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GameData_Images1`
    FOREIGN KEY (`idImage`)
    REFERENCES `lab10_bd`.`Images` (`idImage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
