USE `Practica1`;
SELECT COUNT(transaction_start_year) AS `Transacciones del 2011`
FROM project
WHERE transaction_start_year = 2011;
