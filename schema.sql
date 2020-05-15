DROP DATABASE IF EXISTS `Practica1`;
CREATE DATABASE  IF NOT EXISTS `Practica1`;
USE `Practica1`;

CREATE TABLE `type_status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB;

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB;

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_type_code` varchar(150) DEFAULT NULL,
  `location_type_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB;

CREATE TABLE `country_code` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `iso2` varchar(50) DEFAULT NULL,
  `name_aiddata_code` varchar(100) DEFAULT NULL,
  `name_cow_alpha` varchar(100) DEFAULT NULL,
  `name_cow_numeric` varchar(100) DEFAULT NULL,
  `name_fao_code` varchar(100) DEFAULT NULL,
  `name_fips` varchar(100) DEFAULT NULL,
  `name_geoname_id` varchar(100) DEFAULT NULL,
  `name_imf_code` varchar(100) DEFAULT NULL,
  `name_iso3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB;

CREATE TABLE `geoname` (
  `geoname_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `gazetteer_adm_code` varchar(100) DEFAULT NULL,
  `gazetteer_adm_name` varchar(100) DEFAULT NULL,
  `location_class` varchar(45) DEFAULT NULL,
  `geographic_exactness` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`geoname_id`)
) ENGINE=InnoDB;

CREATE TABLE `project` (
  `project_id` varchar(45) DEFAULT NULL,
  `is_geocoded` int(11) DEFAULT NULL,
  `project_title` varchar(100) DEFAULT NULL,
  `start_actual_isodate` date DEFAULT NULL,
  `end_actual_isodate` date DEFAULT NULL,
  `donors` varchar(150) DEFAULT NULL,
  `donors_iso3` varchar(150) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `ad_sector_codes` varchar(150) DEFAULT NULL,
  `ad_sector_names` varchar(150) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `transaction_start_year` int(11) DEFAULT NULL,
  `transaction_end_year` int(11) DEFAULT NULL,
  `total_commitments` varchar(50) DEFAULT NULL,
  `total_disburments` varchar(50) DEFAULT NULL,
  `project_code` varchar(50) DEFAULT NULL,
  FOREIGN KEY (`country_id`) REFERENCES `country_code` (`country_id`),
  FOREIGN KEY (`status_id`) REFERENCES `type_status` (`id_status`)
) ENGINE=InnoDB;

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_code` varchar(100) DEFAULT NULL,
  `transaction_isodate` date DEFAULT NULL,
  `transaction_year` int(11) DEFAULT NULL,
  `transaction_value_code` varchar(100) DEFAULT NULL,
  `transaction_currency_id` int(11) NOT NULL,
  `transaction_value` bigint(15) DEFAULT NULL,
  `project_id1` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  FOREIGN KEY (`transaction_currency_id`) REFERENCES `currency` (`currency_id`)
) ENGINE=InnoDB;

CREATE TABLE `level_1a` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_geoname_id` varchar(150) DEFAULT NULL,
  `geoname_id` int(11) NOT NULL,
  `transaction_start_year` int(11) DEFAULT NULL,
  `transaction_end_year` int(11) DEFAULT NULL,
  `even_split_commitments` float DEFAULT NULL,
  `even_split_disbursement` float DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB;
SELECT 'Modelo de base de datos creado.' AS ' ';
