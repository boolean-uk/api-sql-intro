# SQL Commands

## Create Table

```sql
CREATE TABLE films(
 id serial primary key,
 title varchar(255) not null,
 genre varchar(255) not null,
 release_year integer,
 score integer,
 unique(title)
);
```

## Drop Table

```sql
DROP TABLE films;
```

## Insert multiple films

```sql
INSERT INTO films
 (title, genre, release_year, score)
 VALUES ('The Shawshank Redemption', 'Drama', 1994, 9),
 ('The Godfather', 'Crime', 1972, 9),
 ('The Dark Knight', 'Action', 2008, 9),
 ('Alien', 'SciFi', 1979, 9),
 ('Total Recall', 'SciFi', 1990, 8),
 ('The Matrix', 'SciFi', 1999, 8),
 ('The Matrix Resurrections', 'SciFi', 2021, 5),
 ('The Matrix Reloaded', 'SciFi', 2003, 6),
 ('The Hunt for Red October', 'Thriller', 1990, 7),
 ('Misery', 'Thriller', 1990, 7),
 ('The Power Of The Dog', 'Western', 2021, 6),
 ('Hell or High Water', 'Western', 2016, 8),
 ('The Good the Bad and the Ugly', 'Western', 1966, 9),
 ('Unforgiven', 'Western', 1992, 7);
```

## Select Statements

-   All films
-   All films ordered by rating descending
-   All films ordered by release year ascending
-   All films with a rating of 8 or higher
-   All films with a rating of 7 or lower
-   films released in 1990
-   films released before 2000
-   films released after 1990
-   films released between 1990 and 1999
-   films with the genre of "SciFi"
-   films with the genre of "Western" or "SciFi"
-   films with any genre _apart_ from "SciFi"
-   films with the genre of "Western" released before 2000
-   films that have the world "Matrix" in their title

### All Films

```sql
SELECT * FROM films;
```

### All films ordered by rating descending

```sql
SELECT * FROM films
ORDER BY score DESC;
```

### All films ordered by release year ascending

```sql
SELECT * FROM films
ORDER BY release_year ASC;
```

### All films with a rating of 8 or higher

```sql
SELECT * FROM films
WHERE score >= 8;
```

### All films with a rating of 7 or lower

```sql
SELECT * FROM films
WHERE score <= 7;
```

### films released in 1990

```sql
SELECT * FROM films
WHERE release_year = 1990;
```

### films released before 2000

```sql
SELECT * FROM films
WHERE release_year <= 2000;
```

### films released between 1990 and 1999

```sql
SELECT * FROM films
WHERE release_year BETWEEN 1990 and 1999;
```

### films with the genre of "SciFi"

```sql
SELECT * FROM films
WHERE genre = 'SciFi'
```

### films with the genre of "Western" or "SciFi"

```sql
SELECT * FROM films
WHERE genre = 'SciFi'
OR genre = 'Western';
```

### films with any genre _apart_ from "SciFi"

```sql
SELECT * FROM films
WHERE genre != 'SciFi';
```

### films with the genre of "Western" released before 2000

```sql
SELECT * FROM films
WHERE genre = 'Western'
AND release_year < 2000;
```

### films that have the world "Matrix" in their title

```sql
SELECT * FROM films
WHERE title LIKE '%Matrix%';
```

## EXTENSION ONE

-   Return the average film rating
-   Return the total number of films
-   Return the average film rating by genre

### Return the average film rating

```sql
SELECT AVG(score) FROM films;
```

### Return the total number of films

```sql
SELECT COUNT(title) FROM films;
```

### Return the average film rating by genre

```sql
SELECT AVG(score), genre FROM films
GROUP BY genre;
```

## EXTENSION TWO

```sql
CREATE TABLE films(
 id serial primary key,
 title varchar(255) not null,
 genre varchar(255) not null,
 release_year integer,
 score integer,
 director_id integer,
 unique(title)
);
```

```sql
CREATE TABLE directors(
 id serial primary key,
 name VARCHAR(255) not NULL
);
```

```sql
INSERT INTO films
 (title, genre, release_year, score, director_id)
 VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
 ('The Godfather', 'Crime', 1972, 9, 1),
 ('The Dark Knight', 'Action', 2008, 9, 2),
 ('Alien', 'SciFi', 1979, 9, 3),
 ('Total Recall', 'SciFi', 1990, 8, 1),
 ('The Matrix', 'SciFi', 1999, 8, 3),
 ('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
 ('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
 ('The Hunt for Red October', 'Thriller', 1990, 7, 3),
 ('Misery', 'Thriller', 1990, 7, 2),
 ('The Power Of The Dog', 'Western', 2021, 6, 4),
 ('Hell or High Water', 'Western', 2016, 8, 1),
 ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
 ('Unforgiven', 'Western', 1992, 7, 2);
```

```sql
INSERT INTO directors
(name)
VALUES ('James Dean'),
('Obi Juan Kenobi'),
('Hobbes'),
('Martin Scorchy');
```

```sql
SELECT films.title, films.genre, films.release_year, films.score, directors.name
FROM films
INNER JOIN directors ON films.director_id = directors.id;
```

## EXTENSION THREE

```sql
SELECT COUNT(title), directors.name FROM films
INNER JOIN directors ON films.director_id = directors.id
GROUP BY directors.name;
```
