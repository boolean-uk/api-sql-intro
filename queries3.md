CREATE TABLE director(
id SERIAL PRIMARY KEY,
name VARCHAR(32),
birth_year INT
);

INSERT INTO director (name, birth_year) VALUES ('Victor', 2000),('Florg', 1),('Huey Lewis and the News', 1900);
ALTER TABLE films ADD director_id INT REFERENCES director(id);
-- several UPDATE films SET director_id = 1 WHERE different film ids;

SELECT films.id, films.title, films.title, films.release_year, films.score, director.name
FROM films 
INNER JOIN director ON films.director_id=director.id;