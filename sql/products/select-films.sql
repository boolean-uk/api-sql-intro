SELECT * FROM films;
SELECT * FROM films ORDER BY score_out_of_10 DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score_out_of_10 >= 8;
SELECT * FROM films WHERE score_out_of_10 <= 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');
SELECT * FROM films WHERE genre <> 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';
SELECT AVG(score_out_of_10) AS average_rating FROM films;
SELECT COUNT(*) AS total_films FROM films;
SELECT genre, AVG(score_out_of_10) AS average_rating
FROM films
GROUP BY genre;

