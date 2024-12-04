-- Return the average film rating
SELECT AVG(score) FROM films

-- Return the total number of films
SELECT COUNT (title) FROM films

-- Return the average film rating by genre
SELECT AVG(score), genre FROM films
GROUP BY genre

-- create table directors
CREATE TABLE films (
                       id serial primary key,
                       name varchar(255) not null,
);

-- add table column directorId to films
ALTER TABLE films
    ADD directorId int;

-- add directors
INSERT INTO directors (name)
VALUES
    ('Frank Darabont'),
    ('Christopher Nolan'),
    ('Ridley Scott'),
    ('Paul Verhoeven'),
    ('John McTiernan'),
    ('Lana Wachowski'),
    ('Rob Reiner'),
    ('Jane Campion'),
    ('David Mackenzie'),
    ('Sergio Leone'),
    ('Clint Eastwood'),
    ('Francis Ford Coppola');

-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, directors.name
FROM films
         INNER JOIN directors ON films.directorid=directors.id;

-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT COUNT(films.title), directors.name FROM
    films JOIN directors ON films.directorid=directors.id
GROUP BY films.directorid, directors.name

