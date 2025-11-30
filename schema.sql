CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT unique,
    password_hash TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    book_grade INTEGER,
    user_id INTEGER REFERENCES users,
    author TEXT
);

CREATE TABLE comments(
    id INTEGER PRIMARY KEY,
    book_id INTEGER REFERENCES books,
    user_id INTEGER REFERENCES users,
    description TEXT,
    book_grade INTEGER
);

CREATE TABLE classes (
    id INTEGER PRIMARY KEY,
    title TEXT,
    value TEXT
);

CREATE TABLE book_classes (
    id INTEGER PRIMARY KEY,
    book_id INTEGER REFERENCES books,
    title TEXT,
    value TEXT
);

