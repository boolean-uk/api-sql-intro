CREATE TABLE films(
    id serial primary key,
    title varchar(255) not null,
    genre varchar(255) not null,
    release_year int not null,
    score int not null,
    unique(title)
);

INSERT INTO films(title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

SELECT title FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score >= 8;
SELECT * FROM films WHERE score <= 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year > 1990;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';
SELECT * FROM films WHERE genre != 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';
SELECT AVG(score) FROM films;
SELECT COUNT(title) FROM films;
SELECT AVG(score) FROM films GROUP BY genre;
