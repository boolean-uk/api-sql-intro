//Core

CREATE TABLE films(
 id serial primary key,
 title TEXT not null,
 genre TEXT not null,
 year integer,
 score integer,
  unique (title)
)


insert into films(title, genre, year, score) VALUES('The Shawshank Redemption', 'Drama', 1994, 9);
insert into films(title, genre, year, score) VALUES('The Godfather', 'Crime', 1972, 9);
insert into films(title, genre, year, score) VALUES('The Dark Knight', 'Action', 2008, 9);
insert into films(title, genre, year, score) VALUES('Alien', 'SciFi', 1979, 9);
insert into films(title, genre, year, score) VALUES('Total Recall', 'SciFi', 1990, 8);
insert into films(title, genre, year, score) VALUES('The Matrix', 'SciFi', 1999, 8);
insert into films(title, genre, year, score) VALUES('The Matrix Resurrections', 'SciFi', 2021, 5);
insert into films(title, genre, year, score) VALUES('The Matrix Reloaded', 'SciFi', 2003, 6);
insert into films(title, genre, year, score) VALUES('The Hunt for Red October', 'Thriller', 1990, 7);
insert into films(title, genre, year, score) VALUES('Misery', 'Thriller', 1990, 7);
insert into films(title, genre, year, score) VALUES('The Power Of The Dog', 'Western', 2021, 6);
insert into films(title, genre, year, score) VALUES('Hell or High Water', 'Western', 2016, 8);
insert into films(title, genre, year, score) VALUES('The Good the Bad and the Ugly', 'Western', 1966, 9);
insert into films(title, genre, year, score) VALUES('Unforgiven', 'Western', 1992, 7);


SELECT * from films
SELECT * FROM films ORDER BY score DESC
SELECT * FROM films ORDER BY year ASC
SELECT * FROM films WHERE score > 7
SELECT * FROM films WHERE score < 8
SELECT * FROM films WHERE year = 1990
SELECT * FROM films WHERE year < 1990
SELECT * FROM films WHERE year BETWEEN 1990 AND 1999
SELECT * FROM films WHERE genre = 'SciFi'
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'
SELECT * FROM films WHERE genre != 'SciFi'
SELECT * FROM films WHERE genre = 'Western'AND year < 2000
SELECT * FROM films WHERE title LIKE '%Matrix%'

//Extension 1

SELECT AVG(score) as Avarage_movie_score FROM films
SELECT Count(*) FROM films
SELECT genre, AVG(score) as Average_score_by_genre FROM films GROUP BY genre

//Extension 2

CREATE TABLE directors(
 directorId int primary key,
 name TEXT not null,
  unique (directorId)
)

drop table films

CREATE TABLE films(
 id serial primary key,
 title TEXT not null,
 genre TEXT not null,
 year integer,
 score integer,
 directorId int,
  unique (title),
  FOREIGN KEY (directorID) REFERENCES directors(directorId)
)

insert into directors(directorId, name) VALUES(1, 'Will');
insert into directors(directorId, name) VALUES(2, 'Bill');
insert into directors(directorId, name) VALUES(3, 'Phill');

insert into films(title, genre, year, score, directorId) VALUES('The Shawshank Redemption', 'Drama', 1994, 9, 1);
insert into films(title, genre, year, score, directorId) VALUES('The Godfather', 'Crime', 1972, 9, 1);
insert into films(title, genre, year, score, directorId) VALUES('The Dark Knight', 'Action', 2008, 9, 1);
insert into films(title, genre, year, score, directorId) VALUES('Alien', 'SciFi', 1979, 9, 1);
insert into films(title, genre, year, score, directorId) VALUES('Total Recall', 'SciFi', 1990, 8, 2);
insert into films(title, genre, year, score, directorId) VALUES('The Matrix', 'SciFi', 1999, 8, 2);
insert into films(title, genre, year, score, directorId) VALUES('The Matrix Resurrections', 'SciFi', 2021, 5, 2);
insert into films(title, genre, year, score, directorId) VALUES('The Matrix Reloaded', 'SciFi', 2003, 6, 2);
insert into films(title, genre, year, score, directorId) VALUES('The Hunt for Red October', 'Thriller', 1990, 7, 3);
insert into films(title, genre, year, score, directorId) VALUES('Misery', 'Thriller', 1990, 7, 3);
insert into films(title, genre, year, score, directorId) VALUES('The Power Of The Dog', 'Western', 2021, 6, 3);
insert into films(title, genre, year, score, directorId) VALUES('Hell or High Water', 'Western', 2016, 8, 3);
insert into films(title, genre, year, score, directorId) VALUES('The Good the Bad and the Ugly', 'Western', 1966, 9, 3);
insert into films(title, genre, year, score, directorId) VALUES('Unforgiven', 'Western', 1992, 7, 3);

SELECT * FROM films JOIN directors ON films.directorId = directors.directorid;

//Extension 3

SELECT Count(films.directorid) as Number_of_films, directors.name FROM films JOIN directors ON films.directorId = directors.directorid
GROUP BY directors.name
