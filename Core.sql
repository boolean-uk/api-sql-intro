--SQL CREATE TABLE statement that creates a table to store films.
CREATE TABLE films(
    id serial primary key,
    title TEXT not null UNIQUE,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);

--SQL INSERT statements to add records in to the films table.
insert into films(title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
insert into films(title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
insert into films(title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
insert into films(title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
insert into films(title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
insert into films(title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
insert into films(title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
insert into films(title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
insert into films(title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
insert into films(title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
insert into films(title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
insert into films(title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
insert into films(title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
insert into films(title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

--SQL SELECT statements to return films matching the below criteria:

--All films
SELECT * FROM films;

--All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC;

--All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC;

--All films with a rating of 8 or higher
SELECT * FROM films WHERE score > 7;

--All films with a rating of 7 or lower
SELECT * FROM films WHERE score < 8;

--films released in 1990
SELECT * FROM films WHERE release_year = 1990;

--films released before 2000
SELECT * FROM films WHERE release_year < 2000;

--films released between 1990 and 1999
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

--films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

--films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre = 'SciFi' or genre = 'Western';

--films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi';

--films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

--films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';
