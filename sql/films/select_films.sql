SELECT * FROM films;

SELECT * FROM films ORDER BY rating DESC;

SELECT * FROM films ORDER BY year ASC;

SELECT * FROM films WHERE rating >= 8;

SELECT * FROM films WHERE rating <= 7;

SELECT * FROM films WHERE year = 1990;

SELECT * FROM films WHERE year < 2000;

SELECT * FROM films WHERE year > 1990;

SELECT * FROM films WHERE year BETWEEN 1990 AND 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';

SELECT * FROM films WHERE genre != 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';