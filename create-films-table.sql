CREATE TABLE IF NOT EXISTS films(
	film_id SERIAL PRIMARY KEY,
	title TEXT UNIQUE,
	genre TEXT,
	release_year INTEGER CHECK(release_year > 1800),
	score INTEGER CHECK(score >= 0 AND score <= 10),
	director_id INTEGER NOT NULL,
	FOREIGN KEY (director_id) REFERENCES directors(director_id)
);