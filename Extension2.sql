
CREATE TABLE film(
  film_id SERIAL,
  title TEXT,
  genre TEXT,
  published_year int,
  score int,
  director_id int
 );
 
 
 CREATE TABLE directors(
  director_id SERIAL,
  name TEXT
 );
 
 INSERT INTO directors(name) 
 VALUES
 		('James'),
    ('Biden'),
    ('Dave'),
    ('Rhukmasha'),
    ('Lafiq')
 ;
INSERT INTO film
    (title,genre,published_year,score,director_id)
VALUES
    ('The Shawshank Redemption','Drama',1994,9,3),
    ('The Godfather','Crime',1972,9,2),
    ('The Dark Knight','Action',2008,9,1),
    ('Alien','SciFi',1979,9,4),
    ('Total Recall','SciFi',1990,8,5),
    ('The Matrix','SciFi',1999,8,5),
    ('The Matrix Resurrections','SciFi',2021,5,4),
    ('The Matrix Reloaded','SciFi',2003,6,2),
    ('The Hunt for Red October','Thriller',1990,7,1),
    ('Misery','Thriller',1990,7,3),
    ('The Power of The Dog','Western',2021,6,4),
    ('Hell or High Water','Western',2016,8,1),
    ('The Good, The Bad and The Ugly','Western',1966,9,2),
    ('Unforgiven','Western',1992,7,6);


/* director + film */
SELECT * FROM film
JOIN directors ON
film.director_id = directors.director_id;

