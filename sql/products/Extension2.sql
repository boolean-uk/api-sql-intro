/*
Extension 2
Create a new directors table. Each director should have a name and a unique director id. 
Recreate your films table and add a directorId column. Insert a few director records 
(the data does not need to be real, you can just make directors up). Re-insert your film data, 
updating each film with have a directorId. Using a SQL JOIN, write a SELECT statement that returns a 
list of films with their director.
*/


  CREATE TABLE director(
  id serial primary key,
  fullname varchar (255),
)

INSERT INTO director (fullname) VALUES ('Christopher Nolan'), ('JK Rowling'), ('James camroon'), 

--update table
ALTER TABLE films ADD directorId integer

INSERT INTO films (title, genre, release_year, score, directorId)
VALUES
  ('The Shawshank Redemption', 'Drama', 1994, 9,1),
  ('The Godfather', 'Crime', 1972, 9,2),
  ('The Dark Knight', 'Action', 2008, 9, 1),
  ('Alien', 'SciFi', 1979, 9, 2),
  ('Total Recall', 'SciFi', 1990, 8, 3),
  ('The Matrix', 'SciFi', 1999, 8, 3),
  ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
  ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
  ('The Hunt for Red October', 'Thriller', 1990, 7, 3),
  ('Misery', 'Thriller', 1990, 7, 1),
  ('The Power Of The Dog', 'Western', 2021, 6, 2),
  ('Hell or High Water', 'Western', 2016, 8, 3),
  ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
  ('Unforgiven', 'Western', 1992, 7, 2);

--It will show title and director name
SELECT films.title, director.fullname FROM films INNER JOIN director ON films.directorid=director.id