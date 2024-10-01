-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Bluecross_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Bluecross_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Bluecross_db` DEFAULT CHARACTER SET utf8 ;
USE `Bluecross_db` ;

-- -----------------------------------------------------
-- Table `Bluecross_db`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Customer` (
  `CustomerID` INT NOT NULL,
  `Cust_FName` VARCHAR(45) NOT NULL,
  `Custom_LName` VARCHAR(45) NOT NULL,
  `Cust_email` VARCHAR(45) NOT NULL,
  `Cust_Phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `Cust_email_UNIQUE` (`Cust_email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Policy Plan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Policy Plan` (
  `PlanID` INT NOT NULL,
  `Policy_Name` VARCHAR(45) NULL,
  `Policy_desp` VARCHAR(45) NULL,
  `Coverage_deatils` VARCHAR(45) NULL,
  PRIMARY KEY (`PlanID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Policy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Policy` (
  `PolicyID` INT NOT NULL,
  `Policy_Type` VARCHAR(45) NULL,
  `StartDate` DATETIME NULL,
  `EndDate` DATETIME NULL,
  `Premium` DECIMAL(10,2) NULL,
  `Customer_CustomerID` INT NOT NULL,
  `Policy_Plan_PlanID` INT NOT NULL,
  PRIMARY KEY (`PolicyID`, `Customer_CustomerID`),
  INDEX `fk_Policy_Customer1_idx` (`Customer_CustomerID` ASC) VISIBLE,
  INDEX `fk_Policy_Policy Plan1_idx` (`Policy_Plan_PlanID` ASC) VISIBLE,
  CONSTRAINT `fk_Policy_Customer1`
    FOREIGN KEY (`Customer_CustomerID`)
    REFERENCES `Bluecross_db`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Policy_Policy Plan1`
    FOREIGN KEY (`Policy_Plan_PlanID`)
    REFERENCES `Bluecross_db`.`Policy Plan` (`PlanID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Provider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Provider` (
  `ProviderID` INT NOT NULL,
  `Provider_FName` VARCHAR(45) NOT NULL,
  `Provider_LName` VARCHAR(45) NOT NULL,
  `Speciality` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `P_Phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ProviderID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Employee` (
  `EmpID` INT NOT NULL,
  `Emp_FName` VARCHAR(45) NULL,
  `Emp_LName` VARCHAR(45) NULL,
  `Role` VARCHAR(45) NOT NULL,
  `Dept` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmpID`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Claims`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Claims` (
  `ClaimsID` INT NOT NULL,
  `DateFiled` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NULL,
  `Amount` DECIMAL(10,2) NULL,
  `Customer_CustomerID` INT NOT NULL,
  `Policy_PolicyID` INT NOT NULL,
  `Employee_EmpID` INT NOT NULL,
  PRIMARY KEY (`ClaimsID`),
  INDEX `fk_Claims_Customer1_idx` (`Customer_CustomerID` ASC) VISIBLE,
  INDEX `fk_Claims_Policy1_idx` (`Policy_PolicyID` ASC) VISIBLE,
  INDEX `fk_Claims_Employee1_idx` (`Employee_EmpID` ASC) VISIBLE,
  CONSTRAINT `fk_Claims_Customer1`
    FOREIGN KEY (`Customer_CustomerID`)
    REFERENCES `Bluecross_db`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Claims_Policy1`
    FOREIGN KEY (`Policy_PolicyID`)
    REFERENCES `Bluecross_db`.`Policy` (`PolicyID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Claims_Employee1`
    FOREIGN KEY (`Employee_EmpID`)
    REFERENCES `Bluecross_db`.`Employee` (`EmpID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Payment` (
  `PaymentID` INT NOT NULL,
  `PDate` DATETIME NOT NULL,
  `PAmount` DECIMAL(10,2) NULL,
  `Method` VARCHAR(45) NOT NULL,
  `Claims_ClaimsID` INT NOT NULL,
  PRIMARY KEY (`PaymentID`),
  INDEX `fk_Payment_Claims1_idx` (`Claims_ClaimsID` ASC) VISIBLE,
  CONSTRAINT `fk_Payment_Claims1`
    FOREIGN KEY (`Claims_ClaimsID`)
    REFERENCES `Bluecross_db`.`Claims` (`ClaimsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bluecross_db`.`Claim Service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bluecross_db`.`Claim Service` (
  `ServiceID` INT NOT NULL,
  `Service_Date` DATETIME NOT NULL,
  `ServiceType` VARCHAR(45) NULL,
  `Cost` DECIMAL(10,2) NULL,
  `Provider_ProviderID` INT NOT NULL,
  `Claims_ClaimsID` INT NOT NULL,
  PRIMARY KEY (`ServiceID`),
  INDEX `fk_Claim Service_Provider_idx` (`Provider_ProviderID` ASC) VISIBLE,
  INDEX `fk_Claim Service_Claims1_idx` (`Claims_ClaimsID` ASC) VISIBLE,
  CONSTRAINT `fk_Claim Service_Provider`
    FOREIGN KEY (`Provider_ProviderID`)
    REFERENCES `Bluecross_db`.`Provider` (`ProviderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Claim Service_Claims1`
    FOREIGN KEY (`Claims_ClaimsID`)
    REFERENCES `Bluecross_db`.`Claims` (`ClaimsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
