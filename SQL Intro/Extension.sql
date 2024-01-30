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

--TODO
SELECT AVG(score) AS avg FROM films GROUP BY genre;

--Extension 2
CREATE TABLE directors(
   directorId serial primary key,
   first_name varchar(50),
   last_name varchar(50),
   phoneNumber char(8),
   email varchar(60)

);



--Extension 3