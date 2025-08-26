DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS directors CASCADE;

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL UNIQUE,
    genre VARCHAR(255) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER NOT NULL CHECK (score BETWEEN 0 AND 10),
    director_id  INTEGER REFERENCES directors(director_id)
);

INSERT INTO directors (name) VALUES
         ('Frank Darabont'),
         ('Francis Ford Coppola'),
         ('Christopher Nolan'),
         ('Ridley Scott'),
         ('Paul Verhoeven'),
         ('Lana Wachowski'),
         ('John McTiernan'),
         ('Rob Reiner'),
         ('Jane Campion'),
         ('David Mackenzie'),
         ('Sergio Leone'),
         ('Clint Eastwood');

INSERT INTO films (title, genre, release_year, score, director_id) VALUES
       ('The Shawshank Redemption','Drama',   1994, 9, (SELECT director_id FROM directors WHERE name='Frank Darabont')),
       ('The Godfather',           'Crime',   1972, 9, (SELECT director_id FROM directors WHERE name='Francis Ford Coppola')),
       ('The Dark Knight',         'Action',  2008, 9, (SELECT director_id FROM directors WHERE name='Christopher Nolan')),
       ('Alien',                   'SciFi',   1979, 9, (SELECT director_id FROM directors WHERE name='Ridley Scott')),
       ('Total Recall',            'SciFi',   1990, 8, (SELECT director_id FROM directors WHERE name='Paul Verhoeven')),
       ('The Matrix',              'SciFi',   1999, 8, (SELECT director_id FROM directors WHERE name='Lana Wachowski')),
       ('The Matrix Resurrections','SciFi',   2021, 5, (SELECT director_id FROM directors WHERE name='Lana Wachowski')),
       ('The Matrix Reloaded',     'SciFi',   2003, 6, (SELECT director_id FROM directors WHERE name='Lana Wachowski')),
       ('The Hunt for Red October','Thriller',1990, 7, (SELECT director_id FROM directors WHERE name='John McTiernan')),
       ('Misery',                  'Thriller',1990, 7, (SELECT director_id FROM directors WHERE name='Rob Reiner')),
       ('The Power Of The Dog',    'Western', 2021, 6, (SELECT director_id FROM directors WHERE name='Jane Campion')),
       ('Hell or High Water',      'Western', 2016, 8, (SELECT director_id FROM directors WHERE name='David Mackenzie')),
       ('The Good the Bad and the Ugly','Western',1966,9,(SELECT director_id FROM directors WHERE name='Sergio Leone')),
       ('Unforgiven',              'Western', 1992, 7, (SELECT director_id FROM directors WHERE name='Clint Eastwood'));
