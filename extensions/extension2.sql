CREATE TABLE directors(
director_id SERIAL PRIMARY KEY,
name TEXT
);

ALTER TABLE films ADD director_id INTEGER

INSERT INTO directors(name)
VALUES
('George Costanza'),
('George Espanol'),
('Jennie House'),
('Francesca Long'),
('Eve Green')

//Did several manual inputs to give each film a director, by this pattern
UPDATE films
SET director_id = 3
WHERE id = 3

SELECT title, name FROM films
INNER JOIN directors ON films.director_id = directors.director_id