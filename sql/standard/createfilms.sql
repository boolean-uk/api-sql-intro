create table films (
id serial primary key,
title text unique,
genre text,
releaseyear int,
score int
)