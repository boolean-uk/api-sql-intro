SELECT title, name FROM books
INNER JOIN authors ON authors.id = books.author_id