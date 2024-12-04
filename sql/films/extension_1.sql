SELECT AVG(score) as AvgFilmRating FROM films

SELECT COUNT(title) as TotalNoFilms FROM films

SELECT DISTINCT genre, AVG(score) as AvgFilmRating FROM films GROUP BY genre