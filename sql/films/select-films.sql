--All films--
SELECT * FROM films;
--All films ordered by rating descending--
SELECT * FROM films ORDER BY score DESC;
--All films ordered by release year ascending--
SELECT * FROM films ORDER BY release_year ASC;
--All films with a rating of 8 or higher--
SELECT * FROM films WHERE score >= 8;
--All films with a rating of 7 or lower--
SELECT * FROM films WHERE score <= 7;
--Films released in 1990--
SELECT * FROM films WHERE release_year = 1990;
--Films released before 2000--
SELECT * FROM films WHERE release_year < 2000;
--Films released after 1990--
SELECT * FROM films WHERE release_year > 1990;
--Films released between 1990 and 1999--
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
--Films with the genre of "SciFi"--
SELECT * FROM films WHERE genre = 'SciFi';
--Films with the genre of "Western" or "SciFi"--
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
--Films with any genre apart from "SciFi"--
SELECT * FROM films WHERE genre != 'SciFi';
--Films with the genre of "Western" released before 2000--
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
--Films that have the world "Matrix" in their title--
SELECT * FROM films WHERE title LIKE '%Matrix%';
