USE `Practica1`;
LOAD DATA INFILE '/var/lib/mysql-files/ArchivosCSV/transactions.csv'
IGNORE INTO TABLE transaction_temp
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;