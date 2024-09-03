CREATE TABLE films(
 id serial primary key,
 title varchar(100) not null,
 release_year integer not null,
 score integer not null,
 unique(title)
)

--Extension 2
CREATE TABLE films(
 id serial primary key,
 title varchar(100) not null,
 release_year integer not null,
 score integer not null,
 directorId integer not null,
 unique(title)
)