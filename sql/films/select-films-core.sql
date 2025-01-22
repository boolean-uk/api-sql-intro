SELECT * FROM films;

SELECT title, score FROM films ORDER BY score DESC;

SELECT title, release_year FROM films ORDER BY release_year ASC;

SELECT title, score FROM films WHERE score >= 8;

SELECT title, score FROM films WHERE score <= 7;

SELECT title, release_year FROM films WHERE release_year = 1990;

SELECT title, release_year FROM films WHERE release_year <= 1999 ORDER BY release_year ASC;

SELECT title, release_year FROM films WHERE release_year > 1999 ORDER BY release_year ASC;

SELECT title, release_year FROM films WHERE release_year < 1999 AND release_year > 1990 ORDER BY release_year ASC;

SELECT title, genre, release_year FROM films WHERE genre = 'SciFi' ORDER BY release_year DESC;

SELECT title, genre, release_year FROM films WHERE genre = 'SciFi' OR genre = 'Western' ORDER BY release_year DESC;

SELECT title, genre, release_year FROM films WHERE NOT genre = 'SciFi' ORDER BY release_year DESC;

SELECT title, genre, release_year FROM films WHERE genre = 'Western' AND release_year < 2000 ORDER BY release_year DESC;

SELECT title, release_year FROM films WHERE title LIKE '%Matrix%' ORDER BY release_year DESC;
