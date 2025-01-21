CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(255),
    release_year INT,
    score INT,
    directors_id INT,
    CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES directors(id),
    CONSTRAINT unique_title UNIQUE(title)
);

CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
);

--Inserting data

INSERT INTO directors(title) VALUES ('A');
INSERT INTO directors(title) VALUES ('B');
INSERT INTO directors(title) VALUES ('C');
INSERT INTO directors(title) VALUES ('D');

INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Shawshank Redemption', 'Drama', 1994, 9, 1);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Godfather', 'Crime', 1972, 9, 2);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Dark Knight', 'Action', 2008, 9, 3);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('Alien', 'SciFi', 1979, 9, 4);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('Total Recall', 'SciFi', 1990, 8, 1);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Matrix', 'SciFi', 1999, 8, 2);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Matrix Resurrections', 'SciFi', 2021, 5, 3);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Matrix Reloaded', 'SciFi', 2003, 6, 4);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Hunt for Red October', 'Thriller', 1990, 7, 2);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('Misery', 'Thriller', 1990, 7, 1);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Power of The Dog', 'Western', 2021, 6, 4);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('Hell or High Water', 'Western', 2016, 8, 3);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('The Good the bad and the Ugly', 'Western', 1966, 9, 1);
INSERT INTO films(title, genre, release_year, score, directors_id) VALUES('Unforgiven', 'Western', 1992, 7, 2);

--All films
SELECT * FROM films;

--All films descending
SELECT * FROM films ORDER BY score DESC;

--All films ordered by release year
SELECT * FROM films ORDER BY release_year ASC;

--All films with score greater than 7
SELECT * FROM films WHERE score >= 8;

--All films with score less than 8
SELECT * FROM films WHERE score <= 7;

--All films released 1990
SELECT * FROM films WHERE release_year = 1990;

--All films released before 2000
SELECT * FROM films WHERE release_year < 2000;

--All films released after 1990 
SELECT * FROM films WHERE release_year > 1990;

--All films released between 1990 and 1999
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;

--All films with SCIFI genre
SELECT * FROM films WHERE genre = 'SciFi';

--Western or Scifi Genre
SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';

--Not Scifi
SELECT * FROM films WHERE genre != 'SciFi';

--Western and released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

--Includes Matrix in the title
SELECT * FROM films WHERE title LIKE '%Matrix%';


--------EXTENSION-------

--Average score

SELECT AVG(score) FROM films;

--Total amount of films
SELECT COUNT(films) FROM films;

--Average score for each genre
SELECT genre, AVG(score) FROM films GROUP BY genre;

--Join Directors on directors id 
SELECT films.id, films.title, films.genre, films.release_year, films.score, films.directors_id, directors.title
FROM films 
INNER JOIN directors ON films.directors_id = directors.id;

--Amount of films for each director
SELECT directors.title, COUNT(films)
FROM films 
INNER JOIN directors ON films.directors_id = directors.id GROUP BY directors.id