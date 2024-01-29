  --Write SQL INSERT statements to add the following records in to the films table.

  CREATE TABLE films(
  id serial primary key,
  title varchar (255),
  genre varchar (50),
  release_year integer,
  score integer
)

INSERT INTO films (title, genre, release_year, score)
VALUES
  ('The Shawshank Redemption', 'Drama', 1994, 9),
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


--Write SQL SELECT statements to return films matching the below criteria:

--Task 1) All films
--Can use this command to see all the fields in the table
SELECT * FROM films

--Task 2)  All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC

--Task 3) All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC

--Task 4) All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8 

--Task 5) All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7 

--Task 6) films released in 1990
SELECT * FROM films WHERE release_year = 1990

--Task 7) films released before 2000
SELECT * FROM films WHERE release_year <2000

--Task 8) films released after 1990
SELECT * FROM films WHERE release_year > 2000

--Task 9) films released between 1990 and 1999
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

--Task 10) films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

--Task 11) films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

--Task 12)films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi';

--Task 13) films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

--Task 14) films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';

