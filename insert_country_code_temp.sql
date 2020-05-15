USE `Practica1`;
LOAD DATA INFILE '/var/lib/mysql-files/ArchivosCSV/country_codes.csv'
IGNORE INTO TABLE country_code_temp
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;