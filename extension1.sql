SELECT AVG(score) FROM films;

SELECT COUNT(id) FROM films;

SELECT genre, AVG(score) FROM films
	GROUP BY(genre);

