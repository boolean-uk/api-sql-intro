-- All films
select *
from films

-- All films ordered by rating descending
select *
from films
ORDER BY score DESC

--All films ordered by release year ascending
select *
from films
ORDER BY releaseYear ASC

--All films with a rating of 8 or higher
select *
from films
where score >= 8

--All films with a rating of 7 or lower
select *
from films
where score <= 7

--films released in 1990
select *
from films
where releaseYear = 1990

-- films released before 2000
select *
from films
where releaseYear < 2000

-- films released after 1990
select *
from films
where releaseYear > 1990

-- films released between 1990 and 1999
select *
from films
where releaseYear >= 1990 and releaseYear <= 1999

-- films with the genre of "SciFi"
select *
from films
where genre like 'SciFi'

-- films with the genre of "Western" or "SciFi"
select *
from films
where genre like 'SciFi' or genre like 'Western'

-- films with any genre apart from "SciFi"
select *
from films
where genre not like 'SciFi'

-- films with the genre of "Western" released before 2000
select *
from films
where genre like 'Western' and releaseYear < 2000

-- films that have the world "Matrix" in their title
select *
from films
where title like '%Matrix%'