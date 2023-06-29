SELECT * FROM films;

SELECT * FROM films ORDER BY score DESC;

SELECT * FROM films ORDER BY releaseDate ASC;

SELECT * FROM films WHERE score > 7;

SELECT * FROM films WHERE score < 8;

SELECT * FROM films WHERE releasedate = 1990;

SELECT * FROM films WHERE releasedate < 2000;

SELECT * FROM films WHERE releasedate > 1990;

SELECT * FROM films WHERE releasedate > 1990 AND releasedate < 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';

SELECT * FROM films WHERE NOT genre = 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND releasedate < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';

-- EXTENSION 1

SELECT AVG(score)
FROM films;

SELECT COUNT(title)
FROM films;

SELECT genre, AVG(score)
FROM films
GROUP BY genre;
;

-- EXTENSION 2

SELECT films.*, directors."name"
FROM films
INNER JOIN directors ON films.directorid = directors.id;

-- EXTENSION 3

SELECT directors.id, directors."name", COUNT(directorid)
FROM films
JOIN directors ON films.directorid = directors.id
GROUP BY directors."name", directors.id
ORDER BY directors.id ASC;
