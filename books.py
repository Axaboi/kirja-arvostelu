import db

def add_book(title, description, book_grade, user_id):
    sql = """INSERT INTO books (title, description, book_grade, user_id)
             VALUES (?, ?, ?, ?)"""
    db.execute(sql, [title, description, book_grade, user_id])


def get_books():
    sql = """SELECT id, title FROM books ORDER BY id DESC"""
    return db.query(sql)

def get_book(book_id):
    sql = """SELECT books.id,
                    books.title,
                    books.description,
                    books.book_grade,
                    users.id user_id,
                    users.username
             FROM books, users
             WHERE books.user_id = users.id AND
                   books.id = ?"""
    return db.query(sql, [book_id])[0]

def update_book(book_id, title, description, book_grade):
    sql = """UPDATE books SET title = ?,
                              description = ?,
                              book_grade = ?
                          WHERE id = ?"""
    db.execute(sql, [title, description, book_grade, book_id])