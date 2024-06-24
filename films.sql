CREATE TABLE films(
 id serial primary key,
 title TEXT UNIQUE,
 genre TEXT,
 release_year INTEGER,
 rating INTEGER
);