# Database Queries

## Core
### Table

```SQL

CREATE TABLE films (
  id INT NOT NULL PRIMARY KEY AUTOINCREMENT AS IDENTITY,
  title VARCHAR(255),
  genre VARCHAR(255),
  releaseYear INT(10),
  score INT,
);
```

### Select

```SQL
SELECT * FROM films;

SELECT * FROM films
ORDER BY score DESC;

SELECT * FROM films
ORDER BY releaseYear ASC;

SELECT * FROM films
WHERE score >= 8;

SELECT * FROM films
WHERE score <= 7;

SELECT * FROM films
WHERE releaseYear = 1990;

SELECT * FROM films
WHERE releaseYear < 2000;

SELECT * FROM films
WHERE releaseYear > 1990;

SELECT * FROM films
WHERE releaseYear BETWEEN 1990 AND 1999;

SELECT * FROM films
WHERE genre = 'SciFi';

SELECT * FROM films
WHERE genre IN ('Western', 'SciFi');

SELECT * FROM films
WHERE genre NOT IN ('SciFi');

SELECT * FROM films
WHERE genre = 'Western' AND releaseYear < 2000;

SELECT * FROM films
WHERE title LIKE '%Matrix%';

```

## Extension 1

```SQL
SELECT AVG(score) AS average_rating FROM films;

SELECT COUNT(*) AS total_films FROM films;

SELECT genre, AVG(score) AS average_rating FROM films
GROUP BY genre;
```

## Extension 2

### Database

```SQL
CREATE TABLE films (
  id INT NOT NULL PRIMARY KEY AUTOINCREMENT AS IDENTITY,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  releaseYear INT NOT NULL,
  score INT DEFAULT 0,
  director_id INT NOT NULL,
  FOREIGN KEY (director_id) REFERENCES directors(id)
);


CREATE TABLE directors (
  id INT NOT NULL PRIMARY KEY AUTOINCREMENT AS IDENTITY,
  name VARCHAR(255) NOT NULL
);

```
### Select
``` SQL
SELECT films.title, directors.name
FROM films
INNER JOIN directors
ON films.director_id = directors.id;
```
## Extension 3

``` SQL
SELECT directors.name, COUNT(films.title) AS films_directed_count
FROM directors
LEFT JOIN films
ON directors.id = films.director_id
GROUP BY directors.name;
```