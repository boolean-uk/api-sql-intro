CREATE TABLE directors(
    id serial primary key,
    name varchar(255) not null,
    unique(name)
);

INSERT INTO directors(name) VALUES 
	('Nicolas Cage'),
	('Test Pilot'),
	('A'),
	('B'),
	('C');

CREATE TABLE movies(
    id serial primary key,
    name varchar(255) not null,
    director_id INTEGER REFERENCES directors(id),
    genre VARCHAR(50),
    release_year INTEGER,
    score INTEGER,
    unique(name)
);

INSERT INTO movies(name, genre, release_year, score, director_id) VALUES 
    ('The Shawshank Redemption', 'Drama', 1994, 9, (select id from directors where name = 'A')),
    ('The Godfather', 'Crime', 1972, 9, (select id from directors where name = 'A')),
    ('The Dark Knight', 'Action', 2008, 9, (select id from directors where name = 'A')),
    ('Alien', 'SciFi', 1979, 9, (select id from directors where name = 'A')),
    ('Total Recall', 'SciFi', 1990, 8, (select id from directors where name = 'A')),
    ('The Matrix', 'SciFi', 1999, 8, (select id from directors where name = 'Test Pilot')),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, (select id from directors where name = 'Test Pilot')),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, (select id from directors where name = 'Test Pilot')),
    ('The Hunt for Red October', 'Thriller', 1990, 7, (select id from directors where name = 'A')),
    ('Misery', 'Thriller', 1990, 7, (select id from directors where name = 'A')),
    ('The Power Of The Dog', 'Western', 2021, 6, (select id from directors where name = 'A')),
    ('Hell or High Water', 'Western', 2016, 8, (select id from directors where name = 'A')),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, (select id from directors where name = 'A')),
    ('Unforgiven', 'Western', 1992, 7, (select id from directors where name = 'A'));

SELECT * FROM movies JOIN directors ON movies.director_id = directors.id;