CREATE TABLE IF NOT EXISTS directors (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
)

ALTER TABLE films ADD COLUMN director_id INT
ALTER TABLE films ADD CONSTRAINT fk_films_directors FOREIGN KEY (director_id) REFERENCES directors(id)

INSERT INTO directors (name) VALUES ('Dimitris'), ('Farhang'), ('Dave')

UPDATE films SET director_id = 2 WHERE id < 6
UPDATE films SET director_id = 3 WHERE id BETWEEN 6 AND 10
UPDATE films SET director_id = 4 WHERE id > 10

SELECT tb1.title, tb2.name AS Director FROM films tb1 JOIN directors tb2 ON tb1.director_id = tb2.id