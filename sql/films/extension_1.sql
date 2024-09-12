-- Return the average film rating
SELECT ROUND(AVG(score)) AS "AVERAGE_FILM_RATING" FROM films;

-- Return the total number of films
SELECT COUNT(title) AS "NUMBER_OF_FILMS" FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY (genre);
