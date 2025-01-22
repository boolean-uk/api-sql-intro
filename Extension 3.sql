SELECT ARRAY[CONCAT(name, ':', CAST(COUNT(name) AS CHAR))] from films_ext f 
INNER JOIN directors d
ON f.directorId = d.id
GROUP BY d.name, f.title;