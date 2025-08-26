select AVG(score) as avg_score from films

SELECT COUNT(*) AS total_films FROM films;

SELECT genre, ROUND(AVG(score), 2) AS avg_score
FROM films
GROUP BY genre
ORDER BY avg_score DESC, genre;