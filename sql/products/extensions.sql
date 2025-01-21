-- Extension 1
SELECT AVG(score) FROM films;

SELECT COUNT(*) FROM films;

SELECT genre, AVG(score) FROM films GROUP BY genre;

-- Extension 2
CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) not null
);

ALTER TABLE films
ADD COLUMN director_id INTEGER;

INSERT INTO directors (name) VALUES ('John DOe');
INSERT INTO directors (name) VALUES ('Lana Wachowski');

-- apologies for my shitty data
UPDATE films SET director_id = 1; -- Kinda unsafe, but works for now
UPDATE films SET director_id = 2 WHERE title LIKE '%Matrix%';

SELECT films.*, directors.name AS "director_name" FROM films JOIN directors ON films.director_id = directors.id;


-- Extension 3
SELECT directors.name, COUNT(films) FROM directors JOIN films ON directors.id = films.director_id GROUP BY directors.name;
