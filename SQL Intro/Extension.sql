--SQL CREATE TABLE films

CREATE TABLE films(
   id serial primary key, 
   title varchar(50),
   genre varchar(50),
   release_year integer,
   score integer
);

--SQL INSERT into films table in database

INSERT INTO films (title, genre, release_year, score)
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


--Extensions

--Extension 1

SELECT AVG(score) AS avg FROM films;

SELECT Count(*) as amount FROM films;

SELECT films.genre, AVG(score) AS avg FROM films GROUP BY genre;

--Extension 2

DROP TABLE directors;
DROP TABLE films;

CREATE TABLE directors(
   directorid serial,
   name varchar(100),
   phoneNumber char(8),
   email varchar(60),
   PRIMARY KEY(directorid)
);

INSERT INTO directors (name, phoneNumber, email)
VALUES 
('Steven Spielberg', 12345678, 'steven@speilberg.com'),
('Martin Scorsese', 87654321, 'martin@scorsese.com'),
('Ridley Scott', 12213456, 'ridley@scott.com'),
('John Woo', 13214567, 'john@woo.com'),
('Christopher Nolan', 43218765, 'christopher@nolan.com');

CREATE TABLE films(
   id serial primary key, 
   title varchar(50),
   genre varchar(50),
   release_year integer,
   score integer,  
   fk_director integer,
   FOREIGN KEY(fk_director) REFERENCES directors(directorid)
);

INSERT INTO films (title, genre, release_year, score, fk_director)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 4),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 1);


SELECT films.id, films.title, films.genre, films.release_year, films.score, directors.name
FROM films
INNER JOIN directors ON directors.directorid=films.fk_director;

--Extension 3

SELECT directors.directorid, directors.name, COUNT(films.fk_director) AS number_of_movies
FROM directors
LEFT JOIN films
ON (directors.directorid = films.fk_director)
group by directors.directorid;

