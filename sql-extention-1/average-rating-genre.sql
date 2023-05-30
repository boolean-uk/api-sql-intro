select
    genre,
    avg(score)::numeric(10,2)
from
    films
group by
    genre;
