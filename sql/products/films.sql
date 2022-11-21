CREATE TABLE films(
 id serial primary key,
 title TEXT,
 genre TEXT,
 year INTEGER,
 score INTEGER CHECK(score < 10),
 UNIQUE(title)
)

INSERT INTO films (title, genre, year, score)
VALUES ('The Godfather', 'Crime', 1972, 9), 
('The Dark Knight', 'Action', 2008, 9),
('Alien, SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)

SELECT * FROM films

SELECT * FROM films
ORDER BY score DESC

SELECT * FROM films
ORDER BY year asc

SELECT * FROM films
where score > 7

SELECT * FROM films
where score < 8

SELECT * FROM films
where year = 1990

SELECT * FROM films
where year < 2000

SELECT * FROM films
where year > 1989

SELECT * FROM films
where year BETWEEN 1989 AND 2000

SELECT * FROM films
where genre = 'SciFi'

SELECT * FROM films
where genre = 'SciFi' 
OR genre = 'Western' 

SELECT * FROM films
where genre != 'SciFi' 

SELECT * FROM films
where genre = 'Western' AND year < 2000

SELECT * FROM films
where title LIKE '%Matrix%'

-- EXTENSIONS

SELECT FLOOR(AVG(score)) as score FROM films

SELECT COUNT(*) FROM films

SELECT FLOOR(AVG(score)) as score, genre FROM films
GROUP BY genre

select * FROM films a
INNER JOIN directors b 
ON a.director = b.name

select director, COUNT(title) as total_movie FROM films 
GROUP BY director

-- Only films that have a director

select director, COUNT(title) as total_movie FROM films 
GROUP BY director
HAVING director IS NOT NULL