--1: All films:
SELECT * from films

--2: All films ordered by rating descending:
SELECT * from films Order BY score DESC

--3: All films ordered by realease year ascending:
SELECT * from films ORDER BY release_year ASC

--4: All films with a rating of 8 or higher
SELECT * from films WHERE score >= 8 

--5: All films with a rating of 7 or lower
SELECT * from films WHERE score <= 7 

--6: films released in 1990
SELECT * from films WHERE release_year = 1990

--7: films released before 2000
SELECT * from films WHERE release_year < 2000

--8: films released after 1990
SELECT * from films WHERE release_year > 1990

--9: films released between 1990 and 1999
SELECT * from films WHERE release_year BETWEEN 1990 AND 1999;

--10: films with the genre of "SciFi"
SELECT * from films WHERE genre = 'SciFi';

 --11: films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

--12: films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre <> 'SciFi';

 --13: films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;


--14: films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';


