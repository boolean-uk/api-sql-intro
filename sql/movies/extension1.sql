SELECT COUNT(*) FROM movies;
SELECT AVG(score) FROM movies;
SELECT genre,AVG(score) FROM movies GROUP BY genre;