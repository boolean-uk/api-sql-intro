SELECT * FROM films

SELECT * FROM films ORDER BY score DESC;

SELECT * FROM films ORDER BY release_year ASC;

SELECT * FROM films WHERE score >= 8;

SELECT * FROM films WHERE score < 8;

SELECT * FROM films WHERE release_year = 1990;

SELECT * FROM films WHERE release_year < 2000;

SELECT * FROM films WHERE release_year > 1990;

SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;

SELECT * FROM films WHERE genre LIKE '%SciFi%';

SELECT * FROM films WHERE genre LIKE '%Western%' OR genre LIKE '%SciFi%';

SELECT * FROM films WHERE genre NOT LIKE '%SciFi%';

SELECT * FROM films WHERE genre LIKE '%Western%' AND release_year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';