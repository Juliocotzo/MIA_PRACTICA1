USE `Practica1`;
SELECT project.project_title,total_commitments AS `Total Costo`
FROM project
INNER JOIN transaction
ON project.project_id = transaction.project_id1
ORDER BY 2 DESC LIMIT 5;
