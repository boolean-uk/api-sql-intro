SELECT d.name AS director, COUNT(f.directorsId) AS film_count
FROM directors d
JOIN films f ON d.id = f.directorsId
GROUP BY director
ORDER BY film_count
DESC;