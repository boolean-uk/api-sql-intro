// Average score.
SELECT ROUND(AVG(score), 2) AS average_score
FROM films;

// Total number of films.
SELECT COUNT(title) AS total_number_of_films
FROM films;

// Average score grouped by genre.
SELECT genre, ROUND(AVG(score), 2) AS average_score_by_genre
FROM films
GROUP BY genre;