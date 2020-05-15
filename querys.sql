SELECT COUNT(transaction_start_year) 
FROM project 
WHERE transaction_start_year = 2011;

SELECT project_title,MAX(transaction_end_year-transaction_start_year) AS duracion 
FROM project
GROUP BY project_title 
ORDER BY 2 DESC LIMIT 1;

SELECT project_title,MIN(transaction_end_year-transaction_start_year) AS duracion 
FROM project
GROUP BY project_title 
ORDER BY 2 ASC LIMIT 1;

SELECT country_code.name AS Paises,count(name) AS Proyectos
FROM project 
INNER JOIN country_code
ON project.country_id = country_code.country_id
GROUP BY country_code.name
ORDER BY 2 DESC LIMIT 5;

SELECT country_code.name AS Paises,count(name) AS Proyectos
FROM project 
INNER JOIN country_code
ON project.country_id = country_code.country_id
GROUP BY country_code.name
ORDER BY 2 ASC LIMIT 5;

SELECT project.project_title,SUM(transaction.transaction_value)
FROM project 
INNER JOIN transaction
ON project.project_id = transaction.project_id
GROUP BY project.project_title
ORDER BY 2 DESC LIMIT 1;

SELECT project.project_title,SUM(transaction.transaction_value)
FROM project 
INNER JOIN transaction
ON project.project_id = transaction.project_id
GROUP BY project.project_title
ORDER BY 2 ASC LIMIT 1;

SELECT project.project_title,SUM(transaction.transaction_value)
FROM project 
INNER JOIN transaction
ON project.project_id = transaction.project_id
GROUP BY project.project_title
ORDER BY 2 DESC LIMIT 5;

SELECT SUM(transaction.transaction_value)
FROM project 
INNER JOIN transaction
ON project.project_id = transaction.project_id;

SELECT project.project_title,transaction.transaction_value
FROM project 
INNER JOIN transaction
ON project.project_id = transaction.project_id
WHERE project.project_title = 'AFCC2/RI-East Africa Public Health Laboratory Networking Project'
ORDER BY 2 DESC LIMIT 3;