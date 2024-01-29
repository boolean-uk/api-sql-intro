-- Return the average film rating
SELECT Round(AVG(score), 4) as avg_score
FROM films
;

-- Return the total number of films
SELECT COUNT(title) as number_of_movies
FROM films
;

-- Return the average film rating by genre
SELECT genre, Round(AVG(score), 2) as avg_score
FROM films
GROUP BY (genre)
ORDER BY AVG(score) DESC
;