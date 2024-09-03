CREATE TABLE films (
	film_id SERIAL PRIMARY KEY,
  title VARCHAR(255) UNIQUE, 
  genre VARCHAR(100),
  release_year INT,
  score INT CHECK(score BETWEEN 0 and 10)
);


INSERT INTO films (title, genre, release_year, score) VALUES
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


SELECT * FROM films;
SELECT * FROM films
ORDER BY score DESC;
SELECT * FROM films
ORDER BY release_year ASC;
SELECT * FROM films
WHERE score >= 8;
SELECT * FROM films
WHERE score <= 7;
SELECT * FROM films
WHERE release_year = 1990;
SELECT * FROM films
WHERE release_year < 2000;
SELECT * FROM films
WHERE release_year > 1990;
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films
WHERE genre = 'SciFi';
SELECT * FROM films
WHERE genre IN ('Western', 'SciFi');
SELECT * FROM films
WHERE genre <> 'SciFi';
SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films
WHERE title LIKE '%Matrix%';

SELECT ROUND(AVG(score), 2) AS average_rating
FROM films;

SELECT COUNT(*) AS total_number_of_films
FROM films;

SELECT genre, ROUND(AVG(score), 2) AS average_rating
FROM films
GROUP BY genre;

CREATE TABLE directors (
 director_id SERIAL PRIMARY KEY, 
 name VARCHAR(255) UNIQUE
);

DROP TABLE IF EXISTS films;
CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,                
    title VARCHAR(255) UNIQUE,                 
    genre VARCHAR(100),                        
    release_year INT,                          
    score INT CHECK (score BETWEEN 0 AND 10),  
    director_id INT,                           
    FOREIGN KEY (director_id) REFERENCES directors(director_id) 
);

INSERT INTO directors (name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Bob Brown');

INSERT INTO films (title, genre, release_year, score, director_id) VALUES
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
('Unforgiven', 'Western', 1992, 7, 2);  

SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director_name
FROM films
INNER JOIN directors ON films.director_id = directors.director_id;


SELECT directors.name AS director_name, 
       COUNT(films.film_id) AS number_of_films
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;