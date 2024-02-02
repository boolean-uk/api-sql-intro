SELECT
    d.name,
    COUNT(f.film_id) AS film_count
FROM
    films f
    JOIN film_director_map fdm ON f.film_id = fdm.fk_film_id
    JOIN directors d ON fdm.fk_director_id = d.director_id
GROUP BY
    d.director_id
ORDER BY
    film_count DESC