# SQL Intro

In this exercise you are going to practice write SQL for CREATE TABLE, INSERT and SELECT statements. Some examples have been provided for you in the `sql/products` folder.

## Learning Objectives

- Create a database
- Explain that each record should have an identifier known as a primary key
- Use a tool to get visibility on the state of the database
- Use SQL to create and drop a table in the database
- Explain that a table has rows and columns also known as records and fields
- Use SQL to insert and records in a table

## Set Up

Sign up to [Elephant SQL](https://www.elephantsql.com/) and create a new database instance.

## Standard Criteria

Write a SQL CREATE TABLE statement that creates a table to store `films`. The table should have the following columns:

- A unique film id (this should be the primary key, use `SERIAL` or `INTEGER AUTOINCREMENT` to make it increment automatically)
- A unique title
- A genre
- A release year (make this `integer` data type)
- A score out of 10 (make this `integer` data type)

Write SQL INSERT statements to add the following records in to the `films` table.

```
title, genre, release_year, score
The Shawshank Redemption, Drama, 1994, 9
The Godfather, Crime, 1972, 9
The Dark Knight, Action, 2008, 9
Alien, SciFi, 1979, 9
Total Recall, SciFi, 1990, 8
The Matrix, SciFi, 1999, 8,
The Matrix Resurrections, SciFi, 2021, 5
The Matrix Reloaded, SciFi, 2003, 6
The Hunt for Red October, Thriller, 1990, 7
Misery, Thriller, 1990, 7
The Power Of The Dog, Western, 2021, 6
Hell or High Water, Western, 2016, 8
The Good the Bad and the Ugly, Western, 1966, 9
Unforgiven, Western, 1992, 7
```

Write SQL SELECT statements to return films matching the below criteria:

- All films
- All films ordered by rating descending
- All films ordered by release year ascending
- All films with a rating of 8 or higher
- All films with a rating of 7 or lower
- films released in 1990
- films released before 2000
- films released after 1990
- films released between 1990 and 1999
- films with the genre of "SciFi"
- films with the genre of "Western" or "SciFi"
- films with any genre _apart_ from "SciFi"
- films with the genre of "Western" released before 2000
- films that have the world "Matrix" in their title

For the last query, you will need to research the `LIKE` keyword in postgres.

## Extension 1

Write a SQL SELECT statements to:

- Return the average film rating
- Return the total number of films
- Return the average film rating by genre

For these, you will need to research `COUNT`, `AVG` and `GROUP BY` keywords in postgres.

## Extension 2

Create a new `directors` table. Each director should have a name and a unique director id. Recreate your films table and add a `directorId` column. Insert a few director records (the data does not need to be real, you can just make directors up). Re-insert your film data, updating each film with have a `directorId`. Using a SQL `JOIN`, write a SELECT statement that returns a list of films with their director.

## Extension 3

Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
