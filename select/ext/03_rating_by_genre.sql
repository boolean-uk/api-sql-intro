SELECT
  genre
, AVG(score) AS average_score
FROM
  movies
GROUP BY
  genre