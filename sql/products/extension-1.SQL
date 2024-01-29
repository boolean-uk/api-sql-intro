--1: Return the average film rating:
SELECT AVG(score) as average_rating from films

--2: Return the total number of films
SELECT COUNT(*) as total_films from films;

--3: Return the average film rating by genre
SELECT AVG(score) as average_rating from films GROUP BY genre;