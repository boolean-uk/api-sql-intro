SELECT d.name AS "Director", count(f.title) AS "Films directed"
FROM films f
LEFT JOIN directors d ON f.director_id = d.id
GROUP BY d.name;