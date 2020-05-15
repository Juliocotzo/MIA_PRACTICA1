USE `Practica1`;
CREATE TABLE `geoname_temp` (
  `geoname_id` int(11) NOT NULL,
  `place_name` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `location_type_code` varchar(45) DEFAULT NULL,
  `location_type_name` varchar(45) DEFAULT NULL,
  `gazetteer_adm_code` varchar(45) DEFAULT NULL,
  `gazetteer_adm_name` varchar(100) DEFAULT NULL,
  `location_class` varchar(45) DEFAULT NULL,
  `geographic_exactness` varchar(45) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `country_code_temp` (
  `name` varchar(50) DEFAULT NULL,
  `iso2` varchar(45) DEFAULT NULL,
  `name_name` varchar(45) DEFAULT NULL,
  `name_aiddata_code` varchar(45) DEFAULT NULL,
  `name_aiddata_name` varchar(45) DEFAULT NULL,
  `name_cow_alpha` varchar(45) DEFAULT NULL,
  `name_cow_numeric` varchar(45) DEFAULT NULL,
  `name_fao_code` varchar(45) DEFAULT NULL,
  `name_fips` varchar(45) DEFAULT NULL,
  `name_geonames_id` int(11) DEFAULT NULL,
  `name_imf_code` varchar(45) DEFAULT NULL,
  `name_iso2` varchar(45) DEFAULT NULL,
  `name_iso3` varchar(45) DEFAULT NULL,
  `name_iso_numeric` varchar(45) DEFAULT NULL,
  `name_oecd_code` varchar(45) DEFAULT NULL,
  `name_oecd_name` varchar(45) DEFAULT NULL,
  `name_un_code` varchar(45) DEFAULT NULL,
  `name_wb_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `location_temp` (
  `location_type_code` varchar(45) NOT NULL,
  `location_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`location_type_code`)
) ENGINE=InnoDB;

CREATE TABLE `project_temp` (
  `project_id` varchar(45) NOT NULL,
  `is_geocoded` varchar(45) DEFAULT NULL,
  `project_title` varchar(45) DEFAULT NULL,
  `start_actual_isodate` varchar(45) DEFAULT NULL,
  `end_actual_isodate` varchar(45) DEFAULT NULL,
  `donors` varchar(45) DEFAULT NULL,
  `donors_iso3` varchar(45) DEFAULT NULL,
  `recipients` varchar(45) DEFAULT NULL,
  `recipients_iso3` varchar(45) DEFAULT NULL,
  `ad_sector_codes` varchar(45) DEFAULT NULL,
  `ad_sector_names` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `transactions_start_year` varchar(45) DEFAULT NULL,
  `transactions_end_year` varchar(45) DEFAULT NULL,
  `total_commitments` varchar(45) DEFAULT NULL,
  `total_disbursements` varchar(45) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `level_1a_temp` (
  `project_id` varchar(45) DEFAULT NULL,
  `project_location_id` varchar(45) DEFAULT NULL,
  `geoname_id` int(11) DEFAULT NULL,
  `transactions_start_year` varchar(45) DEFAULT NULL,
  `transactions_end_year` varchar(45) DEFAULT NULL,
  `even_split_commitments` varchar(45) DEFAULT NULL,
  `even_split_disbursements` varchar(45) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `transaction_temp` (
  `transaction_id` varchar(45) NOT NULL,
  `project_id` varchar(45) DEFAULT NULL,
  `transaction_isodate` varchar(45) DEFAULT NULL,
  `transaction_year` varchar(45) DEFAULT NULL,
  `transaction_value_code` varchar(45) DEFAULT NULL,
  `transaction_currency` varchar(45) DEFAULT NULL,
  `transaction_value` varchar(45) DEFAULT NULL
) ENGINE=InnoDB;
