-- Return the average film rating
SELECT AVG(score)
FROM films
;

-- Return the total number of films
SELECT COUNT(title)
FROM films
;

-- Return the average film rating by genre
SELECT genre, Round(AVG(score), 2)
FROM films
GROUP BY (genre)
ORDER BY AVG(score) DESC
;