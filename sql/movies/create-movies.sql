CREATE TABLE movies(
    id serial primary key,
    name varchar(255) not null,
    genre VARCHAR(50),
    release_year INTEGER,
    score INTEGER
    unique(name)
);

