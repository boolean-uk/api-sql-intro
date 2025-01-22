select directors.name, count(*) from films
inner join directors on films.directorId = directors.directorId
group by directors.name;
