extension 1
--Return the average film rating
select avg(score) from films;

--Return the total number of films
select COUNT(id) from films;

--Return the average film rating by genre
select genre, avg(score) as score from films group by genre;




