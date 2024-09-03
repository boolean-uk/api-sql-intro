SELECT COUNT(*), dir.name FROM filmsextended as filmex
	INNER JOIN directors as dir
	on filmex.directorid = dir.directorid
	GROUP by dir.name;
	