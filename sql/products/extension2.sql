-- Create directors
CREATE TABLE directors(
	id serial PRIMARY KEY,
	name VARCHAR(255)
);

-- Create films2
CREATE TABLE films2(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	genre VARCHAR(255),
	r_year INTEGER,
	score INTEGER,
	director_id INTEGER,
	FOREIGN KEY (director_id) REFERENCES directors(id)
);

-- Insert some directors
INSERT INTO directors(name) VALUES ('iwj'), ('ewrtew'), ('wetiowjet');

-- Re-insert film data 
INSERT INTO films2(title, genre, r_year, score, director_id) SELECT title, genre, r_year, score, directors.id FROM films INNER JOIN directors ON films.id=directors.id;

-- Get films with director
SELECT title AS movie_title, name AS director_name FROM films2 INNER JOIN directors ON director_id=films2.id;
