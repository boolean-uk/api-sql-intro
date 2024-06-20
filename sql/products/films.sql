-- CREATE TABLE films(
-- 	id SERIAL PRIMARY KEY,
-- 	title TEXT UNIQUE NOT NULL,
-- 	genre TEXT,
-- 	relase_year INTEGER,
-- 	rate INTEGER,
-- 	CHECK(rate <= 10 )
-- )

-- ALTER TABLE films 
-- RENAME COLUMN relase_year TO release_year

-- ALTER TABLE films 
-- RENAME COLUMN rate TO score

-- INSERT INTO films
-- (title, genre, release_year, score)
-- VALUES
-- ('The Shawshank Redemption', 'Drama', 1994, 9),
-- ('The Godfather', 'Crime', 1972, 9),
-- ('The Dark Knight', 'Action', 2008, 9),
-- ('Alien', 'SciFi', 1979, 9),
-- ('Total Recall', 'SciFi', 1990, 8),
-- ('The Matrix', 'SciFi', 1999, 8),
-- ('The Matrix Resurrections', 'SciFi', 2021, 5),
-- ('The Matrix Reloaded', 'SciFi', 2003, 6),
-- ('The Hunt for Red October', 'Thriller', 1990, 7),
-- ('Misery', 'Thriller', 1990, 7),
-- ('The Power Of The Dog', 'Western', 2021, 6),
-- ('Hell or High Water', 'Western', 2016, 8),
-- ('The Good the Bad and the Ugly', 'Western', 1966, 9),
-- ('Unforgiven', 'Western', 1992, 7);

-- SELECT * FROM films
-- ORDER BY score ASC

-- SELECT * FROM films
-- ORDER by score DESC

-- SELECT * FROM films
-- where score >= 8 
-- ORDER by score DESC

-- SELECT * FROM films
-- where score < 8 
-- ORDER by score DESC

-- SELECT * FROM films
-- where release_year = 1990


-- SELECT * FROM films
-- where release_year < 2000


-- SELECT * FROM films
-- where release_year > 1990


-- SELECT * FROM films
-- where release_year BETWEEN 1990 AND 1999

-- SELECT * FROM films 
-- where genre = 'SciFi'

-- SELECT * FROM films 
-- where genre IN ('SciFi','Western')


-- SELECT * FROM films 
-- where genre != 'SciFi'

-- SELECT * FROM films 
-- where genre = 'Western' AND release_year < 1990

-- SELECT * FROM films 
-- where title LIKE '%Matrix%'