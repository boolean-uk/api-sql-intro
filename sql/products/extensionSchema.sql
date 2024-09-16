CREATE TABLE IF NOT EXISTS films (
	Id SERIAL PRIMARY KEY,
	Title TEXT UNIQUE,
	Genre TEXT,
	Year INT,
	Score INT
);

CREATE TABLE IF NOT EXISTS directors (
	Id SERIAL PRIMARY KEY,
	Name TEXT
);

INSERT INTO directors (name) VALUES
('Jon Jon'),
('Lil Nas'),
('Smooth Vanilla'),
('Slim Jim'),
('Chase OK');

INSERT INTO films (Title, Genre, Year, Score)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);

ALTER TABLE films
ADD COLUMN directorId INT REFERENCES directors(Id);

UPDATE films
    SET directorId = CASE
        WHEN title = 'The Shawshank Redemption' THEN 3
        WHEN title = 'The Godfather' THEN 1
        WHEN title = 'The Dark Knight' THEN 1
        WHEN title = 'Alien' THEN 5
        WHEN title = 'Total Recall' THEN 2
        WHEN title = 'The Matrix' THEN 2
        WHEN title = 'The Matrix Resurrections' THEN 4
        WHEN title = 'The Matrix Reloaded' THEN 5
        WHEN title = 'The Hunt for Red October' THEN 1
        WHEN title = 'Misery' THEN 2
        WHEN title = 'The Power Of The Dog' THEN 4
        WHEN title = 'Hell or High Water' THEN 3
        WHEN title = 'The Good the Bad and the Ugly' THEN 2
        WHEN title = 'Unforgiven' THEN 2
    END;