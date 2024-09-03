CREATE TABLE products(
 id serial primary key,
 name varchar(255) not null,
 price int not null,
 discount boolean,
 unique(name)
)





CREATE TABLE films(
 id serial primary key,
 title TEXT not null,
 genre TEXT not null,
 price int not null,
 score int not null,
 unique(title)
)


