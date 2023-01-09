-- All films
SELECT * FROM films

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY score DESC

-- All films ordered by release year ascending
SELECT * FROM films
ORDER BY release ASC

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7

-- films released in 1990
SELECT * FROM films
WHERE release = 1990

-- films released before 2000
SELECT * FROM films
WHERE release < 2000

-- films released after 1990
SELECT * FROM films
WHERE release > 1990

-- films released between 1990 and 1999
SELECT * FROM films
WHERE release BETWEEN 1990 AND 1999

-- films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi'

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi'
OR genre = 'Western'

-- films with any genre apart from "SciFi"
SELECT * FROM films
WHERE genre != 'SciFi'

-- films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western'
AND release < 2000

-- films that have the world "Matrix" in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%'

-- -- Extension 1
-- Return the average film rating
SELECT AVG(score) AS AverageScore FROM films

-- Return the total number of films
SELECT COUNT(*) AS TotalFilms FROM films

-- Return the average film rating by genre
SELECT genre, AVG(score) AS AverageScore FROM films 
GROUP BY genre
ORDER BY AverageScore DESC


