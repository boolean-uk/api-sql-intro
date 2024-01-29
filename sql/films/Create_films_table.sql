CREATE TABLE films (
	id serial primary key,
	title varchar(255) unique NOT NULL,
	genre varchar(255) NOT NULL,
	release_year integer NOT NULL,
	score integer CHECK(score >= 0 AND score <= 10) NOT NULL
);