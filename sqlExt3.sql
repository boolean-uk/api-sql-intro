SELECT name,COUNT(directorId) AS NumOfMovies FROM films2 join directors on directorId = directors.id group by name
