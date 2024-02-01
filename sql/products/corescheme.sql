DROP TABLE IF EXISTS films;

CREATE TABLE films (
	Id SERIAL PRIMARY KEY,
	Title TEXT UNIQUE,
	Genre TEXT,
	Year INT,
	Score INT
);

INSERT INTO films (Id, Title, Genre, Year, Score)
VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 9),
(2, 'The Godfather', 'Crime', 1972, 9),
(3, 'The Dark Knight', 'Action', 2008, 9),
(4, 'Alien', 'SciFi', 1979, 9),
(5, 'Total Recall', 'SciFi', 1990, 8),
(6, 'The Matrix', 'SciFi', 1999, 8),
(7, 'The Matrix Resurrections', 'SciFi', 2021, 5),
(8, 'The Matrix Reloaded', 'SciFi', 2003, 6),
(9, 'The Hunt for Red October', 'Thriller', 1990, 7),
(10, 'Misery', 'Thriller', 1990, 7),
(11, 'The Power Of The Dog', 'Western', 2021, 6),
(12, 'Hell or High Water', 'Western', 2016, 8),
(13, 'The Good the Bad and the Ugly', 'Western', 1966, 9),
(14, 'Unforgiven', 'Western', 1992, 7);










