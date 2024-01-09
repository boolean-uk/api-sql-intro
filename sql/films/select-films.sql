SELECT * FROM films
SELECT * FROM films ORDER BY score DESC
SELECT * FROM films ORDER BY release_year ASC
SELECT * FROM films WHERE score >= 8
SELECT * FROM films WHERE score <= 7
SELECT * FROM films WHERE release_year = 1990
SELECT * FROM films WHERE release_year < 2000
SELECT * FROM films WHERE release_year > 1990
SELECT * FROM films WHERE release_year > 1990 AND release_year < 1999
SELECT * FROM films WHERE genre = 'SciFi'
SELECT * FROM films WHERE genre IN ('SciFi', 'Western')
SELECT * FROM films WHERE genre != 'SciFi'
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000
SELECT * FROM films WHERE title LIKE '%Matrix%'