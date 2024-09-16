SELECT
    director_first_name
  , director_last_name
  , COUNT(movie_id)
FROM
    vw_movies_and_directors
GROUP BY
    director_first_name
  , director_last_name