import db

def add_book(title, description, book_grade, user_id):
    sql = """INSERT INTO books (title, description, book_grade, user_id)
             VALUES (?, ?, ?, ?)"""
    db.execute(sql, [title, description, book_grade, user_id])