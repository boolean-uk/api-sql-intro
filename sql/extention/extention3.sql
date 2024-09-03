SELECT name, COUNT(films)as movies FROM directors
    JOIN films
  ON directors.id = films.director

  GROUP BY name
	ORDER BY movies DESC
    ;

--   Super Man	4
--   Spider Man	4
--   Bat Man	3
--   Iron Man	3
