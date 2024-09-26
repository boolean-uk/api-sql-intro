/*
Write SQL SELECT statements to return films matching the below criteria:
* All films
* All films ordered by rating descending
* All films ordered by release year ascending
* All films with a rating of 8 or higher
* All films with a rating of 7 or lower
* films released in 1990
* films released before 2000
* films released after 1990
* films released between 1990 and 1999
* films with the genre of "SciFi"
* films with the genre of "Western" or "SciFi"
* films with any genre *apart* from "SciFi"
* films with the genre of "Western" released before 2000
* films that have the world "Matrix" in their title
*/

--SELECT * FROM films
--SELECT * FROM films ORDER BY score DESC
--SELECT * FROM films ORDER BY release_year DESC
--SELECT * FROM films WHERE score >= 8
--SELECT * FROM films WHERE score < 8
--SELECT * FROM films WHERE release_year = 1990
--SELECT * FROM films WHERE release_year < 2000
--SELECT * FROM films WHERE release_year > 1990
--SELECT * FROM films WHERE 1990 < release_year AND release_year < 1999
--SELECT * FROM films WHERE genre LIKE 'SciFi'
--SELECT * FROM films WHERE genre LIKE 'SciFi'OR genre LIKE 'Western'
--SELECT * FROM films WHERE genre NOT LIKE 'SciFi'
--SELECT * FROM films WHERE genre LIKE 'Western' AND release_year < 2000
--SELECT * FROM films WHERE title LIKE '%Matrix%'