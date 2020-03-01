DROP DATABASE IF EXISTS `rideshare`;
CREATE DATABASE `rideshare`; 
USE `rideshare`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `user` (
  `username` varchar(45) COLLATE utf8_unicode_ci unique,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ride` (
  `rideid` int(20) AUTO_INCREMENT unique,
  `created_by` varchar(45) COLLATE utf8_unicode_ci,
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `join_ride` (
  `rideid` int(20) COLLATE utf8_unicode_ci unique,
  `associateduser` varchar(45) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`rideid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `area` (
  `Area_No` int(20) COLLATE utf8_unicode_ci unique,
  `Area_Name` varchar(45) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Area_No`)
);  
LOAD DATA LOCAL INFILE 'c:/area.csv' 
INTO TABLE area 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Area_No, Area_Name);

COMMIT;
