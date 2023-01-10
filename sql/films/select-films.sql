--All films
SELECT * FROM films

--All films ordered by rating descending
SELECT * FROM films ORDER BY score desc

--All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year asc

--All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8

--All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7

--films released in 1990
SELECT * FROM films WHERE release_year = 1990

--films released before 2000
SELECT * FROM films WHERE release_year < 2000

--films released after 1990
SELECT * FROM films WHERE release_year > 1990

--films released between 1990 and 1999
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999

--films with the genre of "SciFi"
SELECT * FROM films WHERE genre ='SciFi'

--films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre ='SciFi'OR genre='Western'

--films with any genre *apart* from "SciFi"
SELECT * FROM films WHERE genre !='SciFi'

--films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000

--films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%'

-- EXTENSION 1
--Return the average film rating
SELECT AVG(score) AS AvgScore FROM films

--Return the total number of films
SELECT COUNT(*) AS TotalFilms FROM films

--Return the average film rating by genre
SELECT genre, AVG(score) AS AvgScore FROM films GROUP BY genre

-- EXTENSION 2
SELECT title,director_name, release_year FROM films
INNER JOIN directors ON directors.id = films.director_id ORDER BY director_id

--EXTENSION 3
SELECT COUNT (films.id) as total_films,director_name FROM films
INNER JOIN directors ON directors.id = films.director_id GROUP BY director_name ORDER BY total_films