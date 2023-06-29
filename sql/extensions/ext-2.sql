-- Create directors table
CREATE TABLE directors (
directorId SERIAL PRIMARY KEY,
director VARCHAR
);

-- Insert directors into directors
insert into directors (director) 
values ('Todd Griffin'), 
('Carolina Carruda'), 
('Ian GIFtham');

-- Create new films table with directorId
create table filmsUpdated (
id SERIAL PRIMARY KEY,
title VARCHAR  NOT NULL,
genre VARCHAR,
releaseYear INT,
score INT,
directorId INT
);

-- Insert data into filmsUpdated
insert into filmsUpdated (title, genre, releaseYear, score, directorId)
values
( 'The Shawshank Redemption', 'Drama', 1994, 9, 1),
( 'The Godfather', 'Crime', 1972, 9, 2),
( 'The Dark Knight', 'Action', 2008, 9, 2),
( 'Alien', 'SciFi', 1979, 9, 2),
( 'Total Recall', 'SciFi', 1990, 8, 3),
( 'The Matrix', 'SciFi', 1999, 8, 1),
( 'The Matrix Resurrections', 'SciFi', 2021, 5, 1),
( 'The Matrix Reloaded', 'SciFi', 2003, 6, 1),
( 'The Hunt for Red October', 'Thriller', 1990, 7, 2),
( 'Misery', 'Thriller', 1990, 7, 3),
( 'The Power Of The Dog', 'Western', 2021, 6, 3),
( 'Hell or High Water', 'Western', 2016, 8, 2),
( 'The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
( 'Unforgiven', 'Western', 1992, 7, 2);

-- Retrieve the joined tables
select title, director from filmsUpdated
inner join directors
  on filmsUpdated.directorid = directors.directorid;
