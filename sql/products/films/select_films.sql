SELECT * FROM films
SELECT * FROM films ORDER By score_out_of_10 DESC
SELECT * FROM films ORDER By score_out_of_10 ASC
SELECT * FROM films WHERE score_out_of_10 >= 8
SELECT * FROM films WHERE score_out_of_10 <= 7
SELECT * FROM films WHERE release_date = 1990
SELECT * FROM films WHERE release_date < 2000
SELECT * FROM films WHERE release_date > 1990
SELECT * FROM films WHERE release_date BETWEEN 1990 AND 1999
SELECT * FROM films WHERE genre = 'SciFi'
SELECT * FROM "films" WHERE genre = 'ScriFi' or genre = 'Western'
SELECT * FROM "films" WHERE  genre = 'Western' AND release_date < 2000
SELECT * FROM "films" WHERE title LIKE '%Matrix%'





