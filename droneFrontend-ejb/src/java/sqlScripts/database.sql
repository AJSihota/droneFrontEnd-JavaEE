-- MySQL Script generated by MySQL Workbench
-- 02/26/16 08:29:13
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema droneproducts
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `droneproducts` ;

-- -----------------------------------------------------
-- Schema droneproducts
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `droneproducts` DEFAULT CHARACTER SET utf8 ;
USE `droneproducts` ;

-- -----------------------------------------------------
-- Table `droneproducts`.`supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`supplier` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`supplier` (
  `supplier_id` INT(9) NOT NULL,
  `UPC` INT(12) NULL DEFAULT NULL,
  `name` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE INDEX `supplier_id_UNIQUE` (`supplier_id` ASC),
  INDEX `fk_UPC3_idx` (`UPC` ASC),
  CONSTRAINT `fk_UPC3`
    FOREIGN KEY (`UPC`)
    REFERENCES `droneproducts`.`product` (`UPC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `droneproducts`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`product` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`product` (
  `UPC` INT(12) NOT NULL,
  `supplier_id` INT(9) NULL DEFAULT NULL,
  `name` VARCHAR(60) NULL DEFAULT NULL,
  `profile` VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (`UPC`),
  UNIQUE INDEX `UPC_UNIQUE` (`UPC` ASC),
  INDEX `fk_UPC_idx` (`UPC` ASC),
  INDEX `fk_supplier_id_idx` (`supplier_id` ASC),
  CONSTRAINT `fk_supplier_id`
    FOREIGN KEY (`supplier_id`)
    REFERENCES `droneproducts`.`supplier` (`supplier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `droneproducts`.`productlocations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`productlocations` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`productlocations` (
  `location_id` INT(9) NOT NULL,
  `UPC` INT(12) NOT NULL,
  PRIMARY KEY (`location_id`, `UPC`),
  INDEX `fk_UPC2_idx` (`UPC` ASC),
  INDEX `fk_UPC1_idx` (`UPC` ASC),
  CONSTRAINT `fk_UPC2`
    FOREIGN KEY (`UPC`)
    REFERENCES `droneproducts`.`product` (`UPC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_location_id`
    FOREIGN KEY (`location_id`)
    REFERENCES `droneproducts`.`location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `droneproducts`.`location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`location` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`location` (
  `location_id` INT(9) NOT NULL AUTO_INCREMENT,
  `x_pos` VARCHAR(30) NULL DEFAULT NULL,
  `y_pos` VARCHAR(30) NULL DEFAULT NULL,
  `UPC` INT(12) NULL DEFAULT NULL,
  `shelf_number` INT(4) NULL DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE INDEX `location_id_UNIQUE` (`location_id` ASC),
  INDEX `fk_UPC_idx` (`UPC` ASC),
  CONSTRAINT `fk_UPC`
    FOREIGN KEY (`UPC`)
    REFERENCES `droneproducts`.`productlocations` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `droneproducts`.`report`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`report` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`report` (
  `report_id` INT(9) NOT NULL AUTO_INCREMENT,
  `UPC` INT(12) NOT NULL,
  `date_created` DATE NULL DEFAULT NULL,
  `found` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`, `UPC`),
  INDEX `fk_product_idx` (`UPC` ASC),
  CONSTRAINT `fk_UPC4`
    FOREIGN KEY (`UPC`)
    REFERENCES `droneproducts`.`product` (`UPC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `droneproducts`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `droneproducts`.`user` ;

CREATE TABLE IF NOT EXISTS `droneproducts`.`user` (
  `user_id` INT(9) NOT NULL,
  `admin` VARCHAR(1) NULL DEFAULT NULL,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `droneproducts` ;

-- -----------------------------------------------------
-- procedure get_image_by_UPC
-- -----------------------------------------------------

USE `droneproducts`;
DROP procedure IF EXISTS `droneproducts`.`get_image_by_UPC`;

DELIMITER $$
USE `droneproducts`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_image_by_UPC`(	
	IN prod_UPC INT(12),
	OUT v_profile VARCHAR(256))
BEGIN
	DECLARE v_name VARCHAR(256);
    DECLARE v_supplier_id INT(9);
    DECLARE v_rows INT(5);
	SELECT profile, name, supplier_id 
    INTO v_profile, v_name, v_supplier_id
    FROM product
    WHERE UPC = prod_UPC;
    
    SELECT FOUND_ROWS() INTO V_ROWS;
	IF(V_ROWS < 1) THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'UPC not found in product table.';
	END IF;
    
    SELECT v_image; 
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
