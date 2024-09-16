1. DROP TABLE films


2. CREATE TABLE IF NOT EXISTS films (
   id SERIAL PRIMARY KEY,
   title TEXT UNIQUE,
   genre TEXT,
   release_year INTEGER,
   score INTEGER,
   directorId INTEGER
   )


3. CREATE TABLE IF NOT EXISTS directors(
   id SERIAL PRIMARY KEY,
   name TEXT
   )


4. INSERT INTO directors (name) VALUES
   ('George'),
   ('Anna'),
   ('Johnathan'),
   ('Mary')


5. INSERT INTO films (title, genre, release_year, score, directorID) VALUES
   ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
   ('The Godfather', 'Crime', 1972, 9, 3),
   ('The Dark Knight', 'Action', 2008, 9, 2),
   ('Alien', 'SciFi', 1979, 9, 2),
   ('Total Recall', 'SciFi', 1990, 8, 3),
   ('The Matrix', 'SciFi', 1999, 8, 1),
   ('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
   ('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
   ('The Hunt for Red October', 'Thriller', 1990, 7, 2),
   ('Misery', 'Thriller', 1990, 7, 1),
   ('The Power Of The Dog', 'Western', 2021, 6, 1),
   ('Hell or High Water', 'Western', 2016, 8, 1),
   ('The Good the Bad and the Ugly', 'Western', 1966, 9, 4),
   ('Unforgiven', 'Western', 1992, 7, 4)


6. SELECT title, directors.name FROM films JOIN directors ON films.directorId = directors.id