-- -----------------------------------------------------
-- Script de création (avec éventuelle suppression préalable)
-- -----------------------------------------------------

DROP SCHEMA IF EXISTS `Marvel` ;

CREATE SCHEMA IF NOT EXISTS `Marvel` DEFAULT CHARACTER SET utf8 ;
USE `Marvel` ;

-- -----------------------------------------------------
-- Table `Marvel`.`alignement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`alignement` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`alignement` (
  `idalignement` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idalignement`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Marvel`.`univers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`univers` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`univers` (
  `idunivers` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idunivers`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Marvel`.`equipes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`equipes` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`equipes` (
  `idequipe` INT NOT NULL DEFAULT 0,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idequipe`),
  UNIQUE INDEX `idequipe_UNIQUE` (`idequipe` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Marvel`.`race`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`race` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`race` (
  `idrace` INT NOT NULL,
  `nom` VARCHAR(45) NULL,
  `particularite` VARCHAR(45) NULL,
  `planete_principale` VARCHAR(45) NULL,
  PRIMARY KEY (`idrace`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`personnage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`personnage` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`personnage` (
  `idpersonnage` INT NOT NULL,
  `nom` VARCHAR(75) NOT NULL,
  `surnom` VARCHAR(45) NULL,
  `nom_civil` VARCHAR(45) NULL,
  `idalignement` INT NOT NULL,
  `idunivers` INT NOT NULL,
  `sexe` VARCHAR(45) NULL,
  `puissance` INT NULL,
  `idequipe` INT NOT NULL DEFAULT 0,
  `idrace` INT NOT NULL DEFAULT 0,
  `lien` VARCHAR(255) NULL,
  PRIMARY KEY (`idpersonnage`),
  INDEX `fk_personnage_alignement_idx` (`idalignement` ASC) VISIBLE,
  INDEX `fk_personnage_univers1_idx` (`idunivers` ASC) VISIBLE,
  INDEX `fk_personnage_equipe1_idx` (`idequipe` ASC) VISIBLE,
  INDEX `fk_personnage_race1_idx` (`idrace` ASC) VISIBLE,
  UNIQUE INDEX `nom_UNIQUE` (`nom` ASC) VISIBLE,
  CONSTRAINT `fk_personnage_alignement`
    FOREIGN KEY (`idalignement`)
    REFERENCES `Marvel`.`alignement` (`idalignement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personnage_univers1`
    FOREIGN KEY (`idunivers`)
    REFERENCES `Marvel`.`univers` (`idunivers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personnage_equipe1`
    FOREIGN KEY (`idequipe`)
    REFERENCES `Marvel`.`equipes` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personnage_race1`
    FOREIGN KEY (`idrace`)
    REFERENCES `Marvel`.`race` (`idrace`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`pouvoirs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`pouvoirs` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`pouvoirs` (
  `idpouvoirs` INT NOT NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idpouvoirs`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`arme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`arme` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`arme` (
  `idarme` INT NOT NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idarme`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`pouvoir_possede`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`pouvoir_possede` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`pouvoir_possede` (
  `idpersonnage` INT NOT NULL,
  `idpouvoirs` INT NOT NULL,
  `intensite` VARCHAR(45) NULL,
  `commentaire` VARCHAR(45) NULL,
  `arme_idarme` INT NOT NULL DEFAULT 0,
  INDEX `fk_pouvoir_possede_personnage1_idx` (`idpersonnage` ASC) VISIBLE,
  INDEX `fk_pouvoir_possede_pouvoirs1_idx` (`idpouvoirs` ASC) VISIBLE,
  PRIMARY KEY (`idpersonnage`, `idpouvoirs`, `arme_idarme`),
  INDEX `fk_pouvoir_possede_arme1_idx` (`arme_idarme` ASC) VISIBLE,
  CONSTRAINT `fk_pouvoir_possede_personnage1`
    FOREIGN KEY (`idpersonnage`)
    REFERENCES `Marvel`.`personnage` (`idpersonnage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pouvoir_possede_pouvoirs1`
    FOREIGN KEY (`idpouvoirs`)
    REFERENCES `Marvel`.`pouvoirs` (`idpouvoirs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pouvoir_possede_arme1`
    FOREIGN KEY (`arme_idarme`)
    REFERENCES `Marvel`.`arme` (`idarme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`Ennemi_de`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`Ennemi_de` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`Ennemi_de` (
  `id_personnage` INT NOT NULL,
  `id_ennemie` INT NOT NULL,
  INDEX `fk_Ennemi de_personnage1_idx` (`id_personnage` ASC) VISIBLE,
  INDEX `fk_Ennemi de_personnage2_idx` (`id_ennemie` ASC) VISIBLE,
  CONSTRAINT `fk_Ennemi de_personnage1`
    FOREIGN KEY (`id_personnage`)
    REFERENCES `Marvel`.`personnage` (`idpersonnage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ennemi de_personnage2`
    FOREIGN KEY (`id_ennemie`)
    REFERENCES `Marvel`.`personnage` (`idpersonnage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`Films`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`Films` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`Films` (
  `idFilms` INT NOT NULL AUTO_INCREMENT,
  `année` SMALLINT NULL,
  `titre` VARCHAR(45) NULL,
  `lien` VARCHAR(255) NULL,
  `note` SMALLINT NULL,
  PRIMARY KEY (`idFilms`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marvel`.`apparait_dans`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Marvel`.`apparait_dans` ;

CREATE TABLE IF NOT EXISTS `Marvel`.`apparait_dans` (
  `personnage_idpersonnage` INT NOT NULL,
  `idFilms` INT NOT NULL,
  INDEX `fk_apparait_personnage1_idx` (`personnage_idpersonnage` ASC) VISIBLE,
  INDEX `fk_apparait_Films1_idx` (`idFilms` ASC) VISIBLE,
  CONSTRAINT `fk_apparait_personnage1`
    FOREIGN KEY (`personnage_idpersonnage`)
    REFERENCES `Marvel`.`personnage` (`idpersonnage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_apparait_Films1`
    FOREIGN KEY (`idFilms`)
    REFERENCES `Marvel`.`Films` (`idFilms`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
