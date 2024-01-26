Core

SELECT * FROM films

SELECT * FROM films ORDER BY score_out_of_10 DESC

SELECT * FROM films ORDER BY release_year ASC

SELECT * FROM films WHERE score_out_of_10 >= 8

SELECT * FROM films WHERE score_out_of_10 <= 7

SELECT * FROM films WHERE release_year = 1990

SELECT * FROM films WHERE release_year < 2000

SELECT * FROM films WHERE release_year > 1990

SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';

SELECT * FROM films WHERE genre != 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';


Extension 1

SELECT AVG(score_out_of_10) FROM films;

SELECT COUNT(*) FROM films;

SELECT AVG(score_out_of_10), genre FROM films GROUP BY genre; 

Extension 2

INSERT INTO directors (name) VALUES ('marcus'), ('pontus'), ('victor'), ('Michael');

SELECT * FROM directors

INSERT INTO films2 (title, genre, release_year, score_out_of_10, director_id) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 1),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 1),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2)

SELECT films2.title, directors.name From films2 Inner Join directors On films2.director_id=directors.id 


Extension 3

SELECT directors.name, COUNT(*) FROM films2 INNER JOIN directors ON films2.director_id = directors.id GROUP BY directors.name