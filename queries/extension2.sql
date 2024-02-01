CREATE TABLE directors(
    directorId SERIAL PRIMARY KEY, 
    name TEXT
);

ALTER TABLE films 
ADD COLUMN director INTEGER;

ALTER TABLE films 
DROP COLUMN director;

ALTER TABLE films 
ADD COLUMN directorId INTEGER;

ALTER TABLE films 
ADD CONSTRAINT fk_directors
FOREIGN KEY (directorId) REFERENCES directors(directorId);

INSERT INTO directors(name) VALUES
('Ridley Scott'),
('Sergio Leone');

DELETE FROM films
where title LIKE 'The Good the Bad and the Ugly' OR title LIKE 'Alien'

INSERT INTO films (title, genre, release_year, score, directorId) VALUES
('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
('Alien', 'SciFi', 1979, 9, 1);

SELECT * FROM films
INNER JOIN directors ON films.directorId = directors.directorId;

