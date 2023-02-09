-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
  UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
  FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE,
  SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema la_vie_saude_mental
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema la_vie_saude_mental
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `la_vie_saude_mental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `la_vie_saude_mental`;
-- -----------------------------------------------------
-- Table `la_vie_saude_mental`.`atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `la_vie_saude_mental`.`atendimento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `psicologo_id` INT NOT NULL,
  `paciente_id` INT NOT NULL,
  `data_atendimento` DATE NOT NULL,
  `observacao` TEXT NOT NULL,
  `createdAt` DATE NOT NULL,
  `updatedAt` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psicologo_id1` (`psicologo_id`),
  KEY `paciente_id1` (`paciente_id`),
  CONSTRAINT `psicologo_id1` FOREIGN KEY (`psicologo_id`) REFERENCES `psicologo` (`id`),
  CONSTRAINT `paciente_id1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `la_vie_saude_mental`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `la_vie_saude_mental`.`pacientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `idade` INT NOT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `la_vie_saude_mental`.`psicologo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `la_vie_saude_mental`.`psicologo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `apresentacao` text,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
   PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;