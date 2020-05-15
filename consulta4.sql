USE `Practica1`;
SELECT country_code.name AS Paises,count(name) AS Proyectos
FROM project 
INNER JOIN country_code
ON project.country_id = country_code.country_id
GROUP BY country_code.name
ORDER BY 2 DESC LIMIT 5;