CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT unique,
    password_hash TEXT
);
