--All films
select * from films

--All films ordered by rating descending
select * from films order by score desc

--All films ordered by release year ascending
select * from films order by release_year asc

--All films with a rating of 8 or higher
select * from films where score > 7

--All films with a rating of 7 or lower
select * from films where score < 8

--films released in 1990
select * from films where release_year = 1990

--films released before 2000
select * from films where release_year < 2000

--films released after 1990
select * from films where release_year > 1990

--films released between 1990 and 1999
select * from films where (release_year > 1989 AND release_year < 2000)

--films with the genre of "SciFi"
select * from films where genre = 'SciFi'

--films with the genre of "Western" or "SciFi"
select * from films where (genre = 'SciFi' OR genre = 'Western')

--films with any genre apart from "SciFi"
select * from films where genre != 'Western'

--films with the genre of "Western" released before 2000
select * from films where (genre = 'Western' and release_year < 2000)

--films that have the world "Matrix" in their title
select * from films where title like '%Matrix%'