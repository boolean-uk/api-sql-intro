-- EXT 1

SELECT AVG(rating) FROM films

SELECT COUNT(id) FROM films;

SELECT genre, AVG(rating) FROM films GROUP BY genre;

-- EXT 2

CREATE TABLE directors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) UNIQUE
);	

ALTER TABLE films ADD directorId INT;

INSERT INTO directors (name) VALUES ('Frank Darabont'), ('Francis Ford Copolla'), ('Christopher Nolan'), ('Ridley Scott'), ('Paul Verhoeven'), ('Wachowski Brothers'), ('John McTiernan'), ('Rob Reiner'), ('Jane Champion'), ('David MacKenzie'), ('Sergio Leone'), ('Clint Eastwood');

UPDATE films SET directorId = 1 WHERE id = 1;
UPDATE films SET directorId = 2 WHERE id = 2;
UPDATE films SET directorId = 3 WHERE id = 3;
UPDATE films SET directorId = 4 WHERE id = 4;
UPDATE films SET directorId = 5 WHERE id = 5;

UPDATE films SET directorId = 6 WHERE title LIKE '%Matrix%';

UPDATE films SET directorId = 7 WHERE id = 9;
UPDATE films SET directorId = 8 WHERE id = 10;
UPDATE films SET directorId = 9 WHERE id = 11;
UPDATE films SET directorId = 10 WHERE id = 12;
UPDATE films SET directorId = 11 WHERE id = 13;
UPDATE films SET directorId = 12 WHERE id = 14;

SELECT films.title, directors.name FROM films
INNER JOIN directors ON directors.id = films.directorId;

-- EXT 3

SELECT name, (SELECT COUNT(directorId) FROM films WHERE directorId = directors.id) FROM directors;