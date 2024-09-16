CREATE TABLE IF NOT EXISTS directors (
name TEXT,
directorId SERIAL PRIMARY KEY
);

INSERT INTO directors (name)
VALUES('Christopher Nolan'),
('Martin Scorsese'),
('Steven Spielberg'),
('Quentin Tarantino'),
('David Fincher');

ALTER TABLE movies
ADD COLUMN director_id INTEGER;

ALTER TABLE films
ADD CONSTRAINT fk_films_directors FOREIGN KEY (director_id) REFERENCES directors(directoriD);

UPDATE films
SET director_id = (
  SELECT directorId
  FROM directors
  WHERE name = 'Christopher Nolan'
)
WHERE title IN ('The Dark Knight', 'Alien', 'Total Recall');

UPDATE films
SET director_id = (
  SELECT directorId
 FROM directors
  WHERE name = 'Martin Scorsese'
)
WHERE title IN ('The Shawshank Redemption', 'The Godfather');

UPDATE films
SET director_id = (
  SELECT directorId
  FROM directors
  WHERE name = 'Steven Spielberg'
)
WHERE title IN ('The Matrix', 'The Matrix Resurrections', 'The Matrix Reloaded');

UPDATE films
SET director_id = (
  SELECT directorId
  FROM directors
  WHERE name = 'Quentin Tarantino'
)
WHERE title IN ('The Hunt for Red October', 'Misery', 'The Power Of The Dog', 'Hell or High Water');

UPDATE films
SET director_id = (
  SELECT directorId
  FROM directors
  WHERE name = 'David Fincher'
)
WHERE title IN ('The Good the Bad and the Ugly', 'Unforgiven');

SELECT * FROM films LEFT OUTER JOIN directors ON films.director_id = directors.directorId;