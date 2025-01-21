CREATE TABLE directors(
	directorId serial PRIMARY KEY,
	name VARCHAR(50),
	unique(directorId)
);

CREATE TABLE newfilms (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	genre VARCHAR(40) NOT NULL,
	release_year INT NOT NULL,
	score INT NOT NULL CHECK (
		score >= 0
		AND score <= 10
	),
	directorID int,
	CONSTRAINT fk_director FOREIGN KEY (directorID) REFERENCES directors(directorId),
	UNIQUE (id),
	UNIQUE (title)
);

