CREATE TABLE directors (
directorId serial PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE filmsExtended (
id serial PRIMARY KEY,
title VARCHAR(30),
genre VARCHAR(30),
release_year INTEGER,
score INTEGER,
directorId INTEGER
);