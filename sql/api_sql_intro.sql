/*
CREATE TABLE films(
	id serial primary key, 
	title varchar(255),
	genre varchar(50),
	release_year integer, 
	score integer,
	directorId  integer,
	FOREIGN KEY (directorId) REFERENCES directors(id_dir)

)
*/


/*

INSERT INTO film (title,genre,release_year,score) VALUES('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO film (title,genre,release_year,score) VALUES('The Godfather', 'Crime', 1972, 9);
INSERT INTO film (title,genre,release_year,score) VALUES('The Dark Knight', 'Action', 2008, 9);
INSERT INTO film (title,genre,release_year,score) VALUES('Alien', 'SciFi', 1979, 9);
INSERT INTO film (title,genre,release_year,score) VALUES('Total Recall', 'SciFi', 1990, 8);
INSERT INTO film (title,genre,release_year,score) VALUES('The Matrix', 'SciFi', 1999, 8,);
INSERT INTO film (title,genre,release_year,score) VALUES('The Matrix Resurrections',' SciFi, 2021, 5);
INSERT INTO film (title,genre,release_year,score) VALUES('The Matrix Reloaded',' SciFi', 2003, 6);
INSERT INTO film (title,genre,release_year,score) VALUES('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO film (title,genre,release_year,score) VALUES('Misery','Thriller', 1990, 7);
INSERT INTO film (title,genre,release_year,score) VALUES('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO film (title,genre,release_year,score) VALUES('Hell or High Water', 'Western', 2016, 8);
INSERT INTO film (title,genre,release_year,score) VALUES('The Good the Bad and the Ugly, Western, 1966, 9);
INSERT INTO film (title,genre,release_year,score) VALUES('Unforgiven','Western', 1992, 7);
*/
/*
INSERT INTO films (title, genre, release_year, score) VALUES

('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall',' SciFi', 1990, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly',' Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)
*/

--SELECT * FROM films;
--SELECT * FROM films ORDER BY score DESC;
--SELECT * FROM films ORDER BY release_year ASC;
--SELECT * FROM films WHERE score >= 8;
--SELECT * FROM films WHERE score <= 7;
--SELECT * FROM films WHERE release_year = 1990;
--SELECT * FROM films WHERE release_year < 2000;
--SELECT * FROM films WHERE release_year > 1990;
--SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
--SELECT * FROM films WHERE genre = 'SciFi';
--SELECT * FROM films WHERE genre IN ('Western', 'SciFi');
--SELECT * FROM films WHERE genre != 'SciFi';
--SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
--SELECT * FROM films WHERE title LIKE '%Matrix%';


--Extension 1

--SELECT AVG(score) AS average_score FROM films;

--SELECT COUNT(*) AS total_films FROM films;

--SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;


--Extension 2
/*
CREATE TABLE directors (
    id_dir serial primary key,
    name VARCHAR(100)
);
*/
/*
INSERT INTO directors (name) VALUES
('Christopher'),
('Quentin'),
('Steven');
*/
/*
UPDATE films SET directorid = 1 WHERE title = 'The Godfather';
UPDATE films SET directorid = 2 WHERE title = 'The Hunt for Red October';
UPDATE films SET directorid = 3 WHERE title = 'Unforgiven';


SELECT f.title, d.name AS director
FROM films f
JOIN directors d ON f.directorid = d.id_dir;
*/

