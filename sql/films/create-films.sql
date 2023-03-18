CREATE TABLE films (
id SERIAL PRIMARY KEY ,
title TEXT, 
UNIQUE (title),
genre TEXT,
release_year INTEGER,
score INTEGER
);