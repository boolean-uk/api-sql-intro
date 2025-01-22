CREATE TABLE directors(
    directorId int,
    name varchar(255),
    unique(directorId)
);

CREATE TABLE films(
    id serial primary key,
    title varchar(255) not null,
    genre varchar(255) not null,
    releaseYear int not null,
    score int,
    directorId int,
    CONSTRAINT fk_directorId
    FOREIGN KEY(directorId) REFERENCES directors(directorId),
    unique(title)
);

INSERT INTO directors (directorId, name) VALUES
    (1, 'Quentin Tarantino'),
    (2, 'Christopher Nolan'),
    (3, 'Martin Scorsese'),
    (4, 'Stanley Kubrick');

INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 3),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 4),
('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 1),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 1),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 4),
('Unforgiven', 'Western', 1992, 7, 4);

/* Return all movies with director names */
select title, directors.name from films
inner join directors on films.directorId = directors.directorId;
