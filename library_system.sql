-- USE library_db;

-- -- Drop tables in order to avoid foreign key constraint errors
-- DROP TABLE IF EXISTS BookCategory;
-- DROP TABLE IF EXISTS loan;
-- DROP TABLE IF EXISTS member;
-- DROP TABLE IF EXISTS book;
-- DROP TABLE IF EXISTS category;
-- DROP TABLE IF EXISTS author;

-- -- Create tables
-- CREATE TABLE IF NOT EXISTS author (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     bio TEXT
-- );

-- CREATE TABLE IF NOT EXISTS category (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS book (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     author_id INT,
--     publisher VARCHAR(255),
--     publish_year INT,
--     isbn VARCHAR(20),
--     copies_available INT,
--     FOREIGN KEY (author_id) REFERENCES author(id)
-- );

-- CREATE TABLE IF NOT EXISTS BookCategory (
--     book_id INT,
--     category_id INT,
--     PRIMARY KEY (book_id, category_id),
--     FOREIGN KEY (book_id) REFERENCES book(id),
--     FOREIGN KEY (category_id) REFERENCES category(id)
-- );

-- CREATE TABLE IF NOT EXISTS member (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     phone VARCHAR(20),
--     address TEXT,
--     registration_date DATE
-- );

-- CREATE TABLE IF NOT EXISTS loan (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     book_id INT,
--     member_id INT,
--     loan_date DATE NOT NULL,
--     due_date DATE NOT NULL,
--     return_date DATE,
--     FOREIGN KEY (book_id) REFERENCES book(id),
--     FOREIGN KEY (member_id) REFERENCES member(id)
-- );

-- -- Insert sample data
-- INSERT INTO author (name, bio) VALUES
-- ('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
-- ('George R.R. Martin', 'American novelist and short story writer.'),
-- ('J.R.R. Tolkien', 'British writer, poet, and professor, author of The Lord of the Rings.');

-- INSERT INTO category (name) VALUES
-- ('Fantasy'),
-- ('Adventure'),
-- ('Fiction'),
-- ('Mystery');

-- INSERT INTO book (title, author_id, publisher, publish_year, isbn, copies_available) VALUES
-- ('Harry Potter and the Sorcerer''s Stone', 1, 'Bloomsbury', 1997, '9780747532699', 3),
-- ('A Game of Thrones', 2, 'Bantam Spectra', 1996, '9780553573404', 2),
-- ('The Hobbit', 3, 'George Allen & Unwin', 1937, '9780547928227', 4);

-- INSERT INTO BookCategory (book_id, category_id) VALUES
-- (1, 1), -- Harry Potter in Fantasy
-- (1, 2), -- Harry Potter in Adventure
-- (2, 1), -- Game of Thrones in Fantasy
-- (2, 3), -- Game of Thrones in Fiction
-- (3, 1); -- The Hobbit in Fantasy

-- INSERT INTO member (first_name, last_name, email, phone, address, registration_date) VALUES
-- ('Alice', 'Johnson', 'alice.johnson@example.com', '1234567890', '123 Maple Street', '2023-01-15'),
-- ('Bob', 'Smith', 'bob.smith@example.com', '0987654321', '456 Oak Avenue', '2023-02-10');

-- INSERT INTO loan (book_id, member_id, loan_date, due_date, return_date) VALUES
-- (1, 1, '2023-10-01', '2023-10-15', NULL),


-- (2, 2, '2023-09-20', '2023-10-04', '2023-10-03');

SHOW TABLES;
SELECT * FROM author;