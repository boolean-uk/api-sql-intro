select avg(score) as average_rating from films;

select count(*) as total_films from films;

select genre, avg(score) as average_rating
from films
group by genre
order by genre;