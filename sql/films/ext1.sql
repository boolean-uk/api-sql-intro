/* Return the average film rating */
select avg(score) from films;

/* Return the total number of films */
select count(*) from films;

/* Return the average film rating by genre */
select genre, avg(score) from films
group by genre
order by avg desc;
