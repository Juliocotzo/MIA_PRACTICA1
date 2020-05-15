USE `Practica1`;
SELECT project_title,MAX(datediff(end_actual_isodate,start_actual_isodate)) AS duracion
FROM project
WHERE datediff(end_actual_isodate,start_actual_isodate) IS NOT NULL
GROUP BY project_title
ORDER BY 2 ASC LIMIT 1;
