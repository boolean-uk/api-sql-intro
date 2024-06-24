CREATE TABLE films(
 id serial primary key,
 title TEXT UNIQUE,
 genre TEXT,
 release_year INTEGER,
 rating INTEGER
);

INSERT INTO films (title, genre, release_year, rating) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Unforgiven', 'Western', 1992, 7);

SELECT * FROM films;

SELECT * FROM films ORDER BY rating DESC;

SELECT * FROM films ORDER BY release_year ASC;

SELECT * FROM films WHERE rating > 7;
