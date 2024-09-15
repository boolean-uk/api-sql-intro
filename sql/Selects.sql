SELECT * FROM films --all films
SELECT * FROM films ORDER BY score DESC --rated by score desc
SELECT * FROM films ORDER BY release_year ASC --rated by release year asc
SELECT * FROM films WHERE score >= 8 --score of 8 or higher
SELECT * FROM films WHERE score <= 7 --score of 7 or lower
SELECT * FROM films WHERE release_year = 1990 --released in 1990
SELECT * FROM films WHERE release_year < 2000 --released before 2000
SELECT * FROM films WHERE release_year > 1990 --released after 1990
SELECT * FROM films WHERE release_year > 1990 AND release_year < 1999 --released after 1990 but before 1999
SELECT * FROM films WHERE genre = 'SciFi' --genre of scifi
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'--genre of scifi or western
SELECT * FROM films WHERE genre != 'SciFi' --genre isnt scifi
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000 --genre is western and before 2000
SELECT * FROM films WHERE title LIKE '%Matrix%' --matrix somewhere in title