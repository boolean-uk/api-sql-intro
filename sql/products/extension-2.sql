-- CREATE TABLE films2 (
id serial PRIMARY KEY,
title VARCHAR(255),
genre VARCHAR(50),
release_year INTEGER,
score INTEGER
)

INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9)
INSERT INTO films2 (title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7)


-- Adding columns into table2:
ALTER TABLE films2 ADD COLUMN directorId INTEGER;

INSERT INTO directors (name) VALUES ('Heiaa')
INSERT INTO directors (name) VALUES ('Oleee')
INSERT INTO directors (name) VALUES ('deeeew')
INSERT INTO directors (name) VALUES ('Yesss')

-- Adding  directorId from directors:
UPDATE films2 SET films2.directorId = (SELECT director_id FROM directors ORDER BY NEWID());
UPDATE films2 SET directorID = 1 WHERE release_year <= 1990
UPDATE films2 SET directorID = 2 WHERE release_year > 1990 AND release_year <= 1999
UPDATE films2 SET directorID = 3 WHERE release_year > 1999 AND release_year < 2005
 UPDATE films2 SET directorID = 4 WHERE release_year > 2005 AND release_year <= 2016
UPDATE films2 SET directorID = 4 WHERE release_year > 2016 AND release_year <= 2021


SELECT films2.title, films2.genre, films2.release_year, films2.score, directors.name AS director 
FROM films2 
JOIN directors ON films2.directorid = directors.director_id;
