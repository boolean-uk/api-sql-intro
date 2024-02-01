--Return the average film rating
Select AVG(score) from films

--Return the total number of films
Select count(title) from films

--Return the average film rating by genre
Select genre, AVG(score) from films group by genre