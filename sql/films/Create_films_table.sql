CREATE TABLE films (
	id serial primary key,
	title varchar(255) unique,
	genre varchar(255),
	release_year integer,
	score integer
);