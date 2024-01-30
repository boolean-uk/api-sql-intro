-- All films

SELECT * FROM films;

-- All films ordered by rating descending

SELECT * FROM films ORDER BY release_year DESC;

-- All films ordered by release year ascending

SELECT * FROM films ORDER BY release_year ASC;

-- All films with a rating of 8 or higher

SELECT * FROM films WHERE score >= 8;

-- All films with a rating of 7 or lower

SELECT * FROM films WHERE score <= 7;

-- films released in 1990

SELECT * FROM films WHERE release_year = 1990;

-- films released before 2000

SELECT * FROM films WHERE release_year < 2000;

-- films released after 1990

SELECT * FROM films WHERE release_year > 1990;

-- films released between 1990 and 1999

SELECT * FROM films WHERE release_year > 1990 AND 1999 > release_year;

-- films with the genre of "SciFi"

SELECT * FROM films WHERE genre LIKE 'SciFi';

-- films with the genre of "Western" or "SciFi"

SELECT * FROM films WHERE genre IN ('SciFi', 'Western');

-- films with any genre apart from "SciFi"

SELECT * FROM films WHERE genre NOT LIKE 'SciFi';

-- films with the genre of "Western" released before 2000

SELECT * FROM films WHERE genre LIKE 'Western' AND release_year < 2000;

-- films that have the world "Matrix" in their title

SELECT * FROM films WHERE title LIKE '%Matrix%';




-- Extension 1

-- Return the average film rating

SELECT AVG(score) FROM films;

-- Return the total number of films

SELECT COUNT(id) FROM films;

-- Return the average film rating by genre

SELECT AVG(score), genre FROM films GROUP BY genre;


-- Extension 2

-- Create a new directors table. Each director should have a name and a unique director id. 
-- Recreate your films table and add a directorId column. 
-- Insert a few director records (the data does not need to be real, you can just make directors up). 
-- Re-insert your film data, updating each film with have a directorId. 
-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.

CREATE TABLE directors(
 id serial primary key,
 name varchar(255) not null
);

insert into directors (name) VALUES 
    ('Quentin Tarantino'), 
    ('Christopher Nolan'),
    ('Ridley Scott'), 
    ('Steven Spielberg');


CREATE TABLE films(
 id serial primary key,
 director_id int not null, 
 title varchar(255) not null,
 genre varchar(50) not null,
 release_year int not null,
 score int not null, 
 foreign key(director_id) REFERENCES directors(id)
);

INSERT INTO films (director_id, title, genre, release_year, score) VALUES 
    ((SELECT id FROM directors WHERE name LIKE 'Quentin Tarantino'), 'Pulp Fiction', 'crime', 1994, 9), 
    ((SELECT id FROM directors WHERE name LIKE 'Christopher Nolan'), 'Inception', 'SciFi', 2010, 9), 
    ((SELECT id FROM directors WHERE name LIKE 'Ridley Scott'), 'Alien', 'SciFi', 1979, 8), 
    ((SELECT id FROM directors WHERE name LIKE 'Steven Spielberg'), 'Ready Player One', 'Action', 2018, 7);

insert into films(director_id, title, genre, release_year, score) VALUES (1, 'The Shawshank Redemption', 'Drama', 1994, 9);
insert into films(director_id, title, genre, release_year, score) VALUES (2, 'The Godfather', 'Crime', 1972, 9);
insert into films(director_id, title, genre, release_year, score) VALUES (3, 'The Dark Knight', 'Action', 2008, 9);
insert into films(director_id, title, genre, release_year, score) VALUES (4, 'Alien', 'SciFi', 1979, 9);
insert into films(director_id, title, genre, release_year, score) VALUES (1, 'Total Recall', 'SciFi', 1990, 8);
insert into films(director_id, title, genre, release_year, score) VALUES (2, 'The Matrix', 'SciFi', 1999, 8);
insert into films(director_id, title, genre, release_year, score) VALUES (3, 'The Matrix Resurrections', 'SciFi', 2021, 5);
insert into films(director_id, title, genre, release_year, score) VALUES (4, 'The Matrix Reloaded', 'SciFi', 2003, 6);
insert into films(director_id, title, genre, release_year, score) VALUES (1, 'The Hunt for Red October', 'Thriller', 1990, 7);
insert into films(director_id, title, genre, release_year, score) VALUES (2, 'Misery', 'Thriller', 1990, 7);
insert into films(director_id, title, genre, release_year, score) VALUES (3, 'The Power Of The Dog', 'Western', 2021, 6);
insert into films(director_id, title, genre, release_year, score) VALUES (4, 'Hell or High Water', 'Western', 2016, 8);
insert into films(director_id, title, genre, release_year, score) VALUES (1, 'The Good the Bad and the Ugly', 'Western', 1966, 9);
insert into films(director_id, title, genre, release_year, score) VALUES (2, 'Unforgiven', 'Western', 1992, 7);


SELECT title, directors.name FROM films JOIN directors ON directors.id = director_id;

-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.

SELECT name, COUNT(title)
    FROM films
    Join directors ON director_id = directors.id
    GROUP BY name;