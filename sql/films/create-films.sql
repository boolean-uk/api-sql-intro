CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title TEXT UNIQUE,
	genre TEXT,
	release_year INTEGER,
	score INTEGER
);