CREATE TABLE directors(
    director_id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO directors (name) VALUES('Ridley Scott');
INSERT INTO directors (name) VALUES('Coen Brothers');
INSERT INTO directors (name) VALUES('Russo Brothers');
INSERT INTO directors (name) VALUES('James Cameron');
INSERT INTO directors (name) VALUES('Frank Darabont');


CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    score INTEGER,
    UNIQUE(title),
    fk_director INT,
    FOREIGN KEY (fk_director) REFERENCES directors(director_id)
);

INSERT INTO films (title, genre, release_year, score) VALUES('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films (title, genre, release_year, score) VALUES('The Godfather', 'Crime', 1972, 9);
INSERT INTO films (title, genre, release_year, score) VALUES('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films (title, genre, release_year, score) VALUES('Alien', 'SciFi', 1979, 9);
INSERT INTO films (title, genre, release_year, score) VALUES('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films (title, genre, release_year, score) VALUES('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films (title, genre, release_year, score) VALUES('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films (title, genre, release_year, score) VALUES('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films (title, genre, release_year, score) VALUES('Unforgiven', 'Western', 1992, 7);

-- Re-insert your film data, updating each film ao it will have a directorId.
UPDATE films
SET fk_director = (
    CASE
        WHEN title = 'The Shawshank Redemption' THEN (SELECT director_id FROM directors WHERE name = 'Frank Darabont')
        WHEN title = 'The Godfather' THEN (SELECT director_id FROM directors WHERE name = 'Ridley Scott')
        WHEN title = 'The Dark Knight' THEN (SELECT director_id FROM directors WHERE name = 'Christopher Nolan')
        WHEN title = 'Alien' THEN (SELECT director_id FROM directors WHERE name = 'Ridley Scott')
        WHEN title = 'Total Recall' THEN (SELECT director_id FROM directors WHERE name = 'Coen Brothers')
        WHEN title = 'The Power Of The Dog' THEN (SELECT director_id FROM directors WHERE name = 'James Cameron')
        WHEN title = 'Hell or High Water' THEN (SELECT director_id FROM directors WHERE name = 'Russo Brothers')
        WHEN title = 'The Good the Bad and the Ugly' THEN (SELECT director_id FROM directors WHERE name = 'Sergio Leone')
        WHEN title = 'Unforgiven' THEN (SELECT director_id FROM directors WHERE name = 'Clint Eastwood')
        ELSE NULL
    END
);

--Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director
FROM films
FULL JOIN directors ON films.fk_director = directors.director_id;





