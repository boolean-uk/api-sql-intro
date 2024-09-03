SELECT title, dir.name FROM filmsextended
	INNER JOIN directors as dir
		ON filmsextended.directorid = dir.directorid;