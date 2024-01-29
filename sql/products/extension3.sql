-- Extension 3
SELECT name AS director_name, COUNT(director_id) as movie_count FROM directors JOIN films2 ON director_id=directors.id GROUP BY directors.name;
