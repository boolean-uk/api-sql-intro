-- Return the average film rating
select AVG(score)
from films
as average_score

-- Return the total number of films
select Count(*) as total_films
from films

-- Return the average film rating by genre
select genre, AVG(score)
from films
as average_score
GROUP BY genre

