
/*CREATE TABLE films(
	id serial primary key,
	title VARCHAR UNIQUE,
	genre VARCHAR,
	release_year INTEGER,
	score INTEGER
	)

*/





/*INSERT INTO films (title, genre, release_year, score)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);
*/

--SELECT * FROM films

--SELECT * FROM films ORDER BY score DESC

--SELECT * FROM films ORDER BY release_year ASC

--SELECT * FROM films WHERE score >= 8

--SELECT * FROM films WHERE score <= 7

--SELECT * FROM films WHERE release_year = 1990

--SELECT * FROM films WHERE release_year < 2000

--SELECT * FROM films WHERE release_year > 1990

--SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999

--SELECT * FROM films WHERE genre = 'SciFi'

--SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'

--SELECT * FROM films WHERE genre != 'SciFi'

--SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000

--SELECT * FROM films WHERE title LIKE '%Matrix%'

--SELECT AVG(score) FROM films

--SELECT COUNT(id) from films

--SELECT AVG(score), genre FROM films GROUP BY genre 


/*CREATE TABLE directors(
	id serial PRIMARY KEY,
	name VARCHAR
)
*/
CREATE TABLE filmsDir(
	id serial primary key,
	title VARCHAR UNIQUE,
	genre VARCHAR,
	release_year INTEGER,
	score INTEGER,
	director_id INTEGER, 
	FOREIGN KEY(director_id) REFERENCES directors(id)
	);
	
	

SELECT * FROM directors;

INSERT INTO directors(name)
VALUES
('Christopher Nolan'),
('Martin Scorsese'),
('Peter Jackson'),
('David Fincher'),
('Quentin Tarantion');


INSERT INTO filmsDir (title, genre, release_year, score, director_id)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 5),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 2),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 5),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 5),
('Unforgiven', 'Western', 1992, 7, 1);


SELECT * FROM filmsDir;


SELECT filmsDir.title, filmsDir.genre, directors.name, filmsDir.release_year
FROM filmsDir
LEFT JOIN directors ON filmsDir.director_id = directors.id;




SELECT d.name AS director_name,
COUNT(title)
FROM directors d
JOIN filmsDir f ON d.id = f.director_id
GROUP BY d.name;
