/*Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.*/

select 
  director.name, COUNT(*)
from 
  films, director
where
  films.director_id = director.id
group by director.name;