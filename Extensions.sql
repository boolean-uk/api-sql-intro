// Extension 1

 // Return the average film rating
 SELECT AVG(score) as average_rating from films;

 // Return the total number of films
 SELECT count(title) as number_of_movies from films;

 // Return the average film rating by genre
 SELECT AVG(score), genre as average_rating from films GROUP BY genre;

// Extension 2

CREATE TABLE IF NOT EXISTS directors (
    director_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    UNIQUE(name)
);


CREATE TABLE IF NOT EXISTS films (
    film_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    release_year INTEGER,
    score INTEGER CHECK (score >= 0 AND score <= 10),
    director_id INTEGER REFERENCES directors(director_id) ON DELETE SET NULL,
    UNIQUE(title)
);




INSERT INTO directors (name)
VALUES
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




INSERT INTO films (title, genre, release_year, score, director_id)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 5),
    ('The Matrix', 'SciFi', 1999, 8, 6),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 6),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 6),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 7),
    ('Misery', 'Thriller', 1990, 7, 8),
    ('The Power Of The Dog', 'Western', 2021, 6, 9),
    ('Hell or High Water', 'Western', 2016, 8, 10),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 11),
    ('Unforgiven', 'Western', 1992, 7, 12);



SELECT f.title,  d.name AS director
FROM films f
JOIN directors d ON f.director_id = d.director_id;




// Extensions 3

SELECT directors.name, COUNT(films.film_id) AS film_count
FROM directors
JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;
