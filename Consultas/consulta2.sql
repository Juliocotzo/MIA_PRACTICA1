USE `Practica1`;
SELECT project_title,MAX(datediff(end_actual_isodate,start_actual_isodate)) AS duracion
FROM project
GROUP BY project_title
ORDER BY 2 DESC LIMIT 1;
