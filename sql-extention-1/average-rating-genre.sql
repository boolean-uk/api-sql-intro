select
    genre,
     cast(avg(score) as decimal(10,2)) as average
from
    films
group by
    genre;
