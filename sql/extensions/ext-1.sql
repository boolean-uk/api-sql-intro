--Return the average film rating
SELECT ROUND(AVG(score), 2) from films;

--Return the total number of films
SELECT COUNT(title) from films;

--Return the average film rating by genre