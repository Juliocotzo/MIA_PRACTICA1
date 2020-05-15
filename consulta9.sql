USE `Practica1`;
SELECT SUM(total_commitments) AS `Suma total Costo`
FROM project
INNER JOIN transaction
ON project.project_id = transaction.project_id1;
