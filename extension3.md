Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed:

select count(*), directors.name from films2
inner JOIN directors ON films2.directorid = directors.id
group by directors.id;