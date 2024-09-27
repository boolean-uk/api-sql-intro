CREATE TABLE films(
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	genre VARCHAR(50) NOT NULL,
	release_year INTEGER NOT NULL,
	score INTEGER,
	UNIQUE(title)
)
