SELECT f.title, f.genre, f.release_year, f.score, d.name AS director
FROM films f
         JOIN directors d ON d.director_id = f.director_id
ORDER BY f.release_year, f.title;