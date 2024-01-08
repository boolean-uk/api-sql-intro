-- Return the average film rating
SELECT AVG(score)::NUMERIC(10, 2) AS average_rateing from films

SELECT CAST(AVG(score)AS INTEGER) as average_score FROM films;

-- Return the total number of films
SELECT COUNT(*) as total_films from films

-- Return the average film rating by genre
SELECT genre, CAST(AVG(score)AS INTEGER) FROM films GROUP BY genre