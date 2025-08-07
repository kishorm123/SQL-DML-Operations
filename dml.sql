
-- Use the library database
USE librarydb;

-- ------------------------------
-- INSERT INTO with handling missing values
-- ------------------------------

-- Insert authors, one with missing country (set to NULL)
INSERT INTO authors (name, country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George Orwell', NULL),  -- missing country handled using NULL
('Haruki Murakami', 'Japan');

-- Insert books, one with default genre
INSERT INTO books (title, genre, authorid) VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1),
('1984', DEFAULT, 2),  -- using DEFAULT for genre (make sure default is defined in table if needed)
('Norwegian Wood', 'Romance', 3);

-- Insert members, one with default join date (assumes default is set)
INSERT INTO members (membername, joindate) VALUES
('Alice Smith', '2022-01-15'),
('Bob Johnson', DEFAULT);  -- using DEFAULT for join date

-- Insert borrowings
INSERT INTO borrowings (memberid, bookid, borrowdate, returndate) VALUES
(1, 1, '2024-01-10', '2024-01-20'),
(2, 3, '2024-02-01', '2024-02-10');

-- ------------------------------
-- UPDATE statements with WHERE
-- ------------------------------

-- Update author's country where name is 'George Orwell'
UPDATE authors
SET country = 'United Kingdom'
WHERE name = 'George Orwell';

-- Update book genre where title is '1984'
UPDATE books
SET genre = 'Dystopian'
WHERE title = '1984';

-- Update member's name where memberid = 1
UPDATE members
SET membername = 'Alice Johnson'
WHERE memberid = 1;

-- Update return date where borrowid = 1
UPDATE borrowings
SET returndate = '2024-01-25'
WHERE borrowid = 1;

-- ------------------------------
-- DELETE statements with WHERE
-- ------------------------------

-- Delete borrowing record where borrowid = 2
DELETE FROM borrowings
WHERE borrowid = 2;

-- Delete member where name is 'Bob Johnson'
DELETE FROM members
WHERE membername = 'Bob Johnson';

-- Delete book where title is '1984'
DELETE FROM books
WHERE title = '1984';

-- Delete author where name = 'George Orwell'
DELETE FROM authors
WHERE name = 'George Orwell';
