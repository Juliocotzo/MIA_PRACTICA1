USE `Practica1`;
SELECT project.project_title,transaction.transaction_value AS `Valor del Proyecto`
FROM project
INNER JOIN transaction
ON project.project_id = transaction.project_id1
WHERE project.project_title = 'AFCC2/RI-East Africa Public Health Laboratory'
ORDER BY 2 DESC LIMIT 3;
