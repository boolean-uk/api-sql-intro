-- CREATE TABLE

CREATE TABLE films(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    score INT NOT NULL,
    UNIQUE(title)
)

-- INSERT DATA

INSERT INTO
    films(title, genre, release_year, score)
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

-- SELECT STATEMENTS

-- All films
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY score DESC;

-- All films ordered by release year ascending
-- All films with a rating of 8 or higher
-- All films with a rating of 7 or lower
-- films released in 1990
-- films released before 2000
-- films released after 1990
-- films released between 1990 and 1999
-- films with the genre of "SciFi"
-- films with the genre of "Western" or "SciFi"
-- films with any genre apart from "SciFi"
-- films with the genre of "Western" released before 2000
-- films that have the world "Matrix" in their title

-- For the last query, you will need to research the `LIKE` keyword in postgres.
