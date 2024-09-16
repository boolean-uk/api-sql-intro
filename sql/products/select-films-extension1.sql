Return the average film rating:
SELECT AVG(score) FROM films
// average appears like this 0.76428571428571429e1 which decimal is this 7.642857142857143

Return the total number of films:
SELECT COUNT(title) FROM films

Return the average film rating by genre:
SELECT AVG(score), genre FROM films GROUP BY genre
// same issue happening here as the first