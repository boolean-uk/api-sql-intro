SELECT AVG(score) FROM movies;

SELECT COUNT(title) FROM movies;

SELECT genre, AVG(score) FROM movies GROUP BY genre;
