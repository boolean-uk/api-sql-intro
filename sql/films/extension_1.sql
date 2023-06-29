* Return the average film rating
SELECT AVG(score) AS average_review_score
FROM films

* Return the total number of films
SELECT COUNT(title) AS number_of_films
FROM films

* Return the average film rating by genre
SELECT genre, ROUND(AVG(score), 1) as average_genre_scores
FROM films
GROUP BY genre