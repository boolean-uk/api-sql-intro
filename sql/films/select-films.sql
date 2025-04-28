SELECT * FROM Movies;

SELECT * FROM Movies ORDER BY score DESC;

SELECT * FROM Movies ORDER BY year ASC;

SELECT * FROM Movies WHERE score >= 8;

SELECT * FROM Movies WHERE score <= 7;

SELECT * FROM Movies WHERE year = 1990;

SELECT * FROM Movies WHERE year < 2000;

SELECT * FROM Movies WHERE year BETWEEN 1990 AND 1999;

SELECT * FROM Movies WHERE genre = 'SciFi';

SELECT * FROM Movies WHERE genre = 'SciFi' OR genre = 'Western';

SELECT * FROM Movies WHERE genre != 'SciFi';

SELECT * FROM Movies WHERE genre = 'Western' AND year < 2000;

SELECT * FROM Movies WHERE title LIKE '%Matrix%';
