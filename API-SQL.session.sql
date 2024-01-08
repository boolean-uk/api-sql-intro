SELECT genre, CAST(AVG(score) AS INT) FROM films
GROUP BY genre
