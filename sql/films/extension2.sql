
CREATE TABLE directors (
	id serial PRIMARY KEY,
	name VARCHAR(255)
)

INSERT INTO directors (name) VALUES ('Lana Wachowski'), ('Clint Eastwood'), ('Frank Darabont')


CREATE TABLE films (
	id serial primary key,
	name VARCHAR(255) unique,
	genre VARCHAR(255),
	release_year integer, 
	score integer,
    director_id INTEGER REFERENCES directors(id)
)

INSERT INTO films (name, genre, release_year, score, director_id) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 3),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 1),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
('The Hunt for Red October', 'Thriller', 1990, 7, 2),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good, the Bad and the Ugly', 'Western', 1966, 9, 2),
('Unforgiven', 'Western', 1992, 7, 3);

Select films.name, directors.name from films join directors on films.director_id=directors.id