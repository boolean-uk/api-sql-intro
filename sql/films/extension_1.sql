-- Return the average film rating
SELECT AVG(score)::NUMERIC(10, 2) AS average_rateing from films

-- Return the total number of films
SELECT COUNT(*) as total_films from films

-- Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre