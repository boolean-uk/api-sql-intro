CREATE TABLE products(
 id serial primary key,
 name varchar(255) not null,
 price int not null,
 discount boolean,
 unique(name)
)

