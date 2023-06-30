CREATE TABLE directors (
 director_id serial primary key,
 director_name varchar(100) NOT NULL);

ALTER TABLE films
ADD directorId varchar(100);

INSERT INTO directors (director_name)
VALUES ('Sara B'), ('Mantas N'), ('Tommy K');

DROP TABLE films

CREATE TABLE films(
 id serial primary key,
 title varchar(300) NOT NULL UNIQUE,
 genre varchar(100) NOT NULL,
 release_year int,
 score int CHECK(score>=0 AND score<=10),
 director_id int
)

INSERT INTO films (title, genre, release_year, score, director_id)
VALUES('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 1),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 1),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 1);

SELECT films.title, director_name
FROM films
INNER JOIN directors ON directors.director_id = films.director_id;