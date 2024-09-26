select * from films;

select * from films order by score desc;

select * from films order by releaseyear asc

select * from films where score > 7

select * from films where score < 8

select * from films where releaseyear = 1990

select * from films where releaseyear < 2000

select * from films where releaseyear > 1990

select * from films where releaseyear between 1990 and 1999

select * from films where genre = 'SciFi'

select * from films where genre = 'SciFi' or genre = 'Western'

select * from films where NOT genre = 'SciFi'

select * from films where genre = 'Western' and releaseyear < 2000

select * from films where title LIKE '%Matrix%'