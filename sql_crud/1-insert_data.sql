CREATE TABLE IF NOT EXISTS books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price REAL NOT NULL,
    stock INTEGER NOT NULL,
    published_year INTEGER NOT NULL
);

INSERT INTO books (title, author, genre, price, stock, published_year)
VALUES
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 10.99, 5, 1937),
    ('1984', 'George Orwell', 'Dystopian', 8.99, 12, 1949),
    ('Clean Code', 'Robert C. Martin', 'Tech', 32.50, 7, 2008),
    ('The Pragmatic Programmer', 'Andrew Hunt', 'Tech', 28.75, 4, 1999),
    ('Dune', 'Frank Herbert', 'Sci-Fi', 9.50, 9, 1965);
