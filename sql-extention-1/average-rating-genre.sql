select
    genre,
    avg(score)
from
    films
group by
    genre;