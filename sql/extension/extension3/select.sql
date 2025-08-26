SELECT d.name AS director, COUNT(f.film_id) AS film_count
FROM directors d
         LEFT JOIN films f ON f.director_id = d.director_id
GROUP BY d.director_id, d.name
ORDER BY film_count DESC, director;