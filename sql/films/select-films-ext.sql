SELECT ROUND(AVG(score), 1) AS average_rating FROM films;

SELECT COUNT(title) FROM films AS total_films;

SELECT genre, ROUND(AVG(score), 1) AS average_rating FROM films GROUP BY genre ORDER BY ROUND(AVG(score), 1) DESC;



SELECT films.title, directors.name AS director
FROM films
JOIN directors
ON films.directorid = directors.id;



SELECT directors.name, COUNT(films.directorId) AS movies
FROM films
JOIN directors
ON films.directorId = directors.id
GROUP BY directors.id;

