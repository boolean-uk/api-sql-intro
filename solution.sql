DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS directors;

CREATE TABLE directors(
  id serial primary key,
  name varchar(255) not null
);



SELECT * FROM directors;

CREATE TABLE films(
 id serial primary key,
 title varchar(255) not null,
 genre varchar(255)not null,
 release_year int not null,
 rating float not null,
 directorID int references directors(id),
 unique(title)
);


INSERT INTO directors(name) VALUES ('Chad Chadsson'), ('Mickey Mouse');


INSERT INTO films 
    (title, genre, release_year, rating, directorID)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 1),
    ('Alien', 'SciFi', 1979, 9, 1),
    ('Total Recall', 'SciFi', 1990, 8, 2),
    ('The Matrix', 'SciFi', 1999, 8, 1),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
    ('The Hunt for Red October', 'Thriller', 1990, 7,2),
    ('Misery', 'Thriller', 1990, 7,1),
    ('The Power Of The Dog', 'Western', 2021, 6,2),
    ('Hell or High Water', 'Western', 2016, 8,1),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
    ('Unforgiven', 'Western', 1992, 7, 1);

SELECT * FROM films;

SELECT * FROM films ORDER BY rating desc;
SELECT * FROM films ORDER BY release_year asc;
SELECT * FROM films WHERE rating >= 8;
SELECT * FROM films WHERE rating <= 7;

SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year <= 2000;

SELECT * FROM films WHERE release_year between 1990 AND 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';

SELECT * FROM films WHERE NOT genre = 'SciFi';

SELECT * FROM films WHERE genre = 'Western' and release_year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';
SELECT AVG(rating) as Average FROM films;

SELECT COUNT(films) FROM films;

SELECT AVG(rating) as average, genre FROM films GROUP BY genre;


SELECT * FROM directors LEFT JOIN films on directors.id = directorID ORDER BY films.id;

SELECT directors.id, directors.name, count(*) FROM films JOIN directors on directors.id = films.directorId GROUP BY directors.id;
