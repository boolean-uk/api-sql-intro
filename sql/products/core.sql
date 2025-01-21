SELECT * FROM films;

SELECT * FROM films ORDER BY score DESC;

SELECT * FROM films ORDER BY year;

SELECT * FROM films WHERE score >= 8;

SELECT * FROM films WHERE score <= 7;

SELECT * FROM films WHERE year = 1990;

SELECT * FROM films WHERE year < 2000;

SELECT * FROM films WHERE year > 1990;

SELECT * FROM films WHERE year BETWEEN 1990 and 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

SELECT * FROM films WHERE genre != 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';