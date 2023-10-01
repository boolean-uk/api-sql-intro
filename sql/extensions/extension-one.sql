-- Return the average film rating
SELECT AVG(score_out_of_10) AS average_rating FROM films;

-- Return the total number of films
SELECT COUNT(*) AS total_films FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(score_out_of_10) AS average_rating
FROM films
GROUP BY genre;
