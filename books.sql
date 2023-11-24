CREATE TABLE books(
        id serial PRIMARY KEY,
        author varchar(65) NOT NULL CONSTRAINT author_not_empty CHECK(author !=''),
        book_title varchar(65) NOT NULL CONSTRAINT book_title_not_empty CHECK(book_title !='') UNIQUE,
        publication_date varchar(4),
        publisher varchar (65),
        book_descripsion text,
        number_of_copies int CHECK(number_of_copies >= 0)
    );