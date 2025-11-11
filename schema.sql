CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT unique,
    password_hash TEXT
);

CREATE TABLE books(
    if INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    book_grade INTEGER,
    user_id INTEGER REFERENCES users
);