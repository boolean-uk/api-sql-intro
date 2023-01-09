-- All films
SELECT * FROM films

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY score DESC

-- All films ordered by rating ascending
SELECT * FROM films
ORDER BY score ASC

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7