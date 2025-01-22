SELECT AVG(films.score) FROM films

SELECT COUNT(films.title) FROM films

SELECT films.genre, AVG(films.score) AS average_score FROM films GROUP BY films.genre
CREATE TABLE directors (
  id serial PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  film_count int NOT NULL
);

INSERT INTO directors (name,film_count) VALUES ('Christopher Nolan',10);
INSERT INTO directors (name,film_count) VALUES ('Steven Spielberg',3);
INSERT INTO directors (name,film_count) VALUES ('Quentin Tarantino',8);
INSERT INTO directors (name,film_count) VALUES ('Martin Scorsese',1);
INSERT INTO directors (name,film_count) VALUES ('Ridley Scott',45);

SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorid = directors.directorid;

SELECT directors.name, directors.film_count
FROM directors