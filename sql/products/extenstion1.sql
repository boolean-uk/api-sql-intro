--You can run it one by one commenting the rest
--Return the average film rating:
SELECT AVG(score_out_of_10) AS average_rating FROM films;
--it return 
--average_rating
--0.76428571428571429e1

--Return the total number of films:
SELECT COUNT(*) AS total_films FROM films;
--it return total_films 14

--Return the average film rating by genre:
SELECT genre, AVG(score_out_of_10) AS average_rating
FROM films
GROUP BY genre;

--it return 
--genre	average_rating
--Thriller	0.7e1
--Western	0.75e1
--Crime	0.9e1
--Drama	0.9e1
--Action	0.9e1
--SciFi	0.72e1