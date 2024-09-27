
Database creation:
CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title VARCHAR(255) NOT NULL UNIQUE,
 genre VARCHAR(255) NOT NULL,
 release_year int NOT NULL,
 score int NOT NULL
)


Database Insertion:
INSERT INTO films(title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

Database selections:
1: SELECT * FROM films
2: SELECT * FROM films ORDER BY score DESC
3: SELECT * FROM films ORDER BY release_year
4: SELECT * FROM films WHERE score>7
5: SELECT * FROM films WHERE score<8
6: SELECT * FROM films WHERE release_year=1990
7: SELECT * FROM films WHERE release_year<2000
8: SELECT * FROM films WHERE release_year>1990
9: SELECT * FROM films WHERE release_year>1989 AND release_year<2000
10: SELECT * FROM films WHERE genre='SciFi'
11: SELECT * FROM films WHERE genre='SciFi' OR genre='Western'
12: SELECT * FROM films WHERE genre!='SciFi'
13: SELECT * FROM films WHERE genre='Western' AND release_year<2000
14: SELECT * FROM films WHERE title LIKE '%Matrix%'

Extension 1:
1: SELECT ROUND(AVG(score),2) FROM films
2: SELECT COUNT(films) FROM films
3: SELECT genre, AVG(score) FROM films GROUP BY genre

Extension 2:
CREATE TABLE directors(
 director_id SERIAL PRIMARY KEY,
 directorname VARCHAR(255) NOT NULL UNIQUE
)

INSERT INTO directors(directorname) VALUES ('Ridley');
INSERT INTO directors(directorname) VALUES ('Tarantino');
INSERT INTO directors(directorname) VALUES ('Russo');

ALTER TABLE films ADD COLUMN director_id int;

UPDATE films SET director_id = 1 WHERE id = 1;
UPDATE films SET director_id = 1 WHERE id = 2;
UPDATE films SET director_id = 2 WHERE id = 3;
UPDATE films SET director_id = 2 WHERE id = 4;
UPDATE films SET director_id = 3 WHERE id = 5;
UPDATE films SET director_id = 3 WHERE id = 6;
UPDATE films SET director_id = 2 WHERE id = 7;
UPDATE films SET director_id = 3 WHERE id = 8;
UPDATE films SET director_id = 2 WHERE id = 9;
UPDATE films SET director_id = 2 WHERE id = 10;
UPDATE films SET director_id = 3 WHERE id = 11;
UPDATE films SET director_id = 1 WHERE id = 12;
UPDATE films SET director_id = 1 WHERE id = 13;
UPDATE films SET director_id = 3 WHERE id = 14;

SELECT directorname, title FROM films
JOIN directors ON films.director_id = directors.director_id;

Extension 3:
SELECT directorname,
Count(director_id) 
FROM films
INNER JOIN directors USING (director_id)
GROUP BY directorname, director_id 
