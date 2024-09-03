--Extension 1

--Return the average film rating
SELECT AVG(score) FROM films;

--Return the total number of films
SELECT COUNT(title) FROM films;

--Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre;


--Extension 2-----------------------------------------------------------------------------------------------

--new directors table.
CREATE TABLE directors(
    id serial primary key,
    name TEXT not null,
);

CREATE TABLE films(
    id serial primary key,
    title TEXT not null UNIQUE,
    directorId INTEGER,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);

--Insert a few director records
insert into directors(name) VALUES ('John Doe');
insert into directors(name) VALUES ('Steve Smith');
insert into directors(name) VALUES ('Dagoth Ur');
insert into directors(name) VALUES ('Prince');
insert into directors(name) VALUES ('Null Void');

--SQL INSERT statements to add records in to the films table.
insert into films(title, directorId, genre, release_year, score) VALUES ('The Shawshank Redemption', 1, 'Drama', 1994, 9);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Godfather', 1, 'Crime', 1972, 9);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Dark Knight', 1, 'Action', 2008, 9);
insert into films(title, directorId, genre, release_year, score) VALUES ('Alien', 1, 'SciFi', 1979, 9);
insert into films(title, directorId, genre, release_year, score) VALUES ('Total Recall', 2, 'SciFi', 1990, 8);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Matrix', 2, 'SciFi', 1999, 8);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Matrix Resurrections', 2, 'SciFi', 2021, 5);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Matrix Reloaded', 2, 'SciFi', 2003, 6);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Hunt for Red October', 3, 'Thriller', 1990, 7);
insert into films(title, directorId, genre, release_year, score) VALUES ('Misery', 3, 'Thriller', 1990, 7);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Power Of The Dog', 4, 'Western', 2021, 6);
insert into films(title, directorId, genre, release_year, score) VALUES ('Hell or High Water', 4, 'Western', 2016, 8);
insert into films(title, directorId, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 4, 'Western', 1966, 9);
insert into films(title, directorId, genre, release_year, score) VALUES ('Unforgiven', 5, 'Western', 1992, 7);

--SELECT statement that returns a list of films with their director.
SELECT films.title, directors.name FROM films INNER JOIN directors ON films.directorId=directors.id;


--Extension 3-----------------------------------------------------------------------------------------------

--SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT COUNT(films.directorId), directors.name FROM films INNER JOIN directors ON films.directorId=directors.id GROUP BY films.directorId, directors.id;