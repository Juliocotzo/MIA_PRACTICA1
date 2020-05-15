USE `Practica1`;
LOAD DATA INFILE '/var/lib/mysql-files/ArchivosCSV/locations.csv'
IGNORE INTO TABLE location_temp
COLUMNS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;