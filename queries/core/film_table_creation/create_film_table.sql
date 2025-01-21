CREATE TABLE films (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	genre VARCHAR(40) NOT NULL,
	release_year INT NOT NULL,
	score INT NOT NULL CHECK (
		score >= 0
		AND score <= 10
	),
	UNIQUE (id),
	UNIQUE (title)
)

