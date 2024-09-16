DROP VIEW vw_movies_and_directors;

CREATE VIEW
    vw_movies_and_directors AS
SELECT
    movies.id            AS movie_id
  , director_id
  , movies.title
  , directors.first_name AS director_first_name
  , directors.last_name  AS director_last_name
  , release_year
  , score
FROM
    movies
    LEFT JOIN directors ON movies.director_id = directors.id;

SELECT
    *
FROM
    vw_movies_and_directors;