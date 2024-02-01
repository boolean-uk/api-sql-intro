CREATE TABLE film(
  film_id SERIAL,
  title TEXT,
  genre TEXT,
  published_year int,
  score int
 );
 
INSERT INTO film
    (title,genre,published_year,score)
VALUES
    ('The Shawshank Redemption','Drama',1994,9),
    ('The Godfather','Crime',1972,9),
    ('The Dark Knight','Action',2008,9),
    ('Alien','SciFi',1979,9),
    ('Total Recall','SciFi',1990,8),
    ('The Matrix','SciFi',1999,8),
    ('The Matrix Resurrections','SciFi',2021,5),
    ('The Matrix Reloaded','SciFi',2003,6),
    ('The Hunt for Red October','Thriller',1990,7),
    ('Misery','Thriller',1990,7),
    ('The Power of The Dog','Western',2021,6),
    ('Hell or High Water','Western',2016,8),
    ('The Good, The Bad and The Ugly','Western',1966,9),
    ('Unforgiven','Western',1992,7);


/* all films */
SELECT * FROM film;

/* all films ordered by rating DESC*/
SELECT * FROM film
ORDER BY score DESC;

/* all films ordered by year ASC*/
SELECT * FROM film
ORDER BY published_year ASC;

/* all films rating 8 or higher*/
SELECT * FROM film
WHERE score >= 8;

/* all films rating 7 or lower*/
SELECT * FROM film
WHERE score <= 7;

/* all films in 1990*/
SELECT * FROM film
WHERE published_year = 1990;

/* all films before 2000*/
SELECT * FROM film
WHERE published_year < 2000;

/* all films after 1990*/
SELECT * FROM film
WHERE published_year > 1990;

/* all films between 1990 and 1999*/
SELECT * FROM film
WHERE published_year BETWEEN 1990 AND 1999;

/* all films with genre SciFi*/
SELECT * FROM film
WHERE genre = 'SciFi';

/* all films with genre SciFi or Western*/
SELECT * FROM film
WHERE genre = 'SciFi' OR genre = 'Western';

/* all films apart from SciFi*/
SELECT * FROM film
WHERE genre != 'SciFi';

/* all films with genre SciFi or Western*/
SELECT * FROM film
WHERE genre = 'Western' AND published_year < 2000;

/* film: matrix*/
SELECT * FROM film
WHERE title LIKE '%Matrix%';


