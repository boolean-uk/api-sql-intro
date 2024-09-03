/* Extension 2 */

CREATE TABLE Films (
	FilmID SERIAL PRIMARY KEY,
  Title VARCHAR(255) NOT NULL UNIQUE,
  Genre VARCHAR(255) NOT NULL,
  ReleaseYear INTEGER NOT NULL,
  Rating INTEGER NOT NULL,
  Director_ID INT,
  FOREIGN KEY (Director_ID) REFERENCES Director(DirectorID) 
);

CREATE TABLE Director (
	DirectorID SERIAL PRIMARY KEY,
  Name VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO films (Title, Genre, ReleaseYear, Rating, Director_ID) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 3),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2);

INSERT INTO Director (Name) VALUES 
('Steven Spielberg'),
('Frank Darabont'),
('Morgan Freeman');

SELECT films.title, films.genre, films.releaseyear, films.rating, director.name AS director_name
FROM films
INNER JOIN director ON films.director_id = director.directorid;