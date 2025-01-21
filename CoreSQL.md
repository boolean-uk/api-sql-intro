# Core 

``` sql
CREATE TABLE films (id SERIAL PRIMARY KEY, title VARCHAR(255), genre VARCHAR(255), realeseYear INTEGER, score INTEGER, UNIQUE (title))

ALTER TABLE films RENAME COLUMN realeseyear TO releaseYear

INSERT INTO films (title, genre, releaseyear, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9), ('The Godfather', 'Crime', 1972, 9), ('The Dark Knight', 'Action', 2008, 9), ('Alien', 'SciFi', 1979, 9), ('Total Recall', 'SciFi', 1990, 8), ('The Matrix', 'SciFi', 1999, 8), ('The Matrix Resurrections', 'SciFi', 2021, 5), ('The Matrix Reloaded', 'SciFi', 2003, 6), ('The Hunt for Red October', 'Thriller', 1990, 7), ('Misery', 'Thriller', 1990, 7), ('The Power Of The Dog', 'Western', 2021, 6), ('Hell or High Water', 'Western', 2016, 8), ('The Good the Bad and the Ugly', 'Western', 1966, 9), ('Unforgiven', 'Western', 1992, 7)

SELECT * FROM films

SELECT * FROM films ORDER BY score DESC
SELECT * FROM films ORDER BY score ASC

SELECT * FROM films WHERE score > 7
SELECT * FROM films WHERE score < 8

SELECT * FROM films WHERE releaseyear = 1990
SELECT * FROM films WHERE releaseyear < 2000
SELECT * FROM films WHERE releaseyear > 1990
SELECT * FROM films WHERE releaseyear < 2000 AND releaseyear > 1989

SELECT * FROM films WHERE genre = 'SciFi'
SELECT * FROM films WHERE genre = 'Western' AND releaseyear < 2000

SELECT * FROM films WHERE title LIKE '%Matrix%';
```

# Extentions
## 1
``` sql
SELECT AVG(score) FROM films 
SELECT COUNT(title) FROM films 
SELECT genre, AVG(score) FROM films GROUP BY genre 
```
## 2
``` sql
CREATE TABLE directors (id SERIAL PRIMARY KEY, name VARCHAR(255))
INSERT INTO directors (name) VALUES ('Quentin Tarantino'), ('Martin Scorsese'), ('Tim Burton'), ('Steven Spielberg')

ALTER TABLE films ADD COLUMN directorsId INTEGER
ALTER TABLE films ADD CONSTRAINT directorFK FOREIGN KEY (directorsId) REFERENCES directors(directorsId)

UPDATE films SET directorsid = 1 WHERE releaseyear < 1999 AND releaseyear > 1980
UPDATE films SET directorsid = 1 WHERE releaseyear > 1999 
UPDATE films SET directorsid = 3 WHERE score < 8
UPDATE films SET directorsid = 2 WHERE releaseyear = 1999

SELECT films.title, directors.name FROM films JOIN directors ON films.directorsid = directors.directorsid
```
## 3
``` sql
SELECT directors.name, COUNT(films.title) FROM directors JOIN films ON films.directorsid = directors.directorsid GROUP BY directors.name
```