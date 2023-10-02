select * from films
select * from films order by score desc
select * from films order by release_year asc
select * from films where score >= 8
select * from films where score <= 7
select * froms films where release_year = 1990
select * froms films where release_year < 2000
select * froms films where release_year > 2000
select * froms films where release_year between 1990 and 1999
select * froms films where genre = 'SciFi'
select * froms films where genre in ('Western', 'SciFi')
select * froms films where genre <> 'SciFi'
select * froms films where genre = 'Western' and release_year < 2000
select * froms films where title like '%Matrix%'
