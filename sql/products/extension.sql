-- 1. Return the average film rating
SELECT AVG(score) AS average_rating FROM films;

-- 2. Return the total number of films
SELECT COUNT(*) AS total_films FROM films;

-- 3. Return the average film rating by genre
SELECT genre, AVG(score) AS average_rating
FROM films
GROUP BY genre;

-- 4. Return all films including the director
SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director
FROM films
JOIN directors ON films.directorId = directors.directorId;

-- 5. Return all directors and number of films
SELECT directors.name AS director_name, COUNT(films.directorId) AS num_films_directed
FROM directors
LEFT JOIN films ON directors.directorId = films.directorId
GROUP BY directors.directorId, directors.name
ORDER BY num_films_directed DESC;
