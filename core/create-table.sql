CREATE TABLE films (
id SERIAL PRIMARY KEY,
title varchar(50) UNIQUE,
genre varchar(20),
release_year integer,
score integer
);