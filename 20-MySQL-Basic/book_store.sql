-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show All Tables --
SHOW TABLES;

-- Create Table --
CREATE TABLE books(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(100),
    title VARCHAR(100),
    description VARCHAR(255),
    place_sell VARCHAR(3),
    stock INT DEFAULT 0,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Update Table --
ALTER TABLE books
    ADD price INT DEFAULT 0,
    ADD status ENUM('available', 'out of stock', 'limited'),
    DROP COLUMN place_sell
;

-- Insert Data --
INSERT INTO books
    (id, author1, author2, author3, title, description, stock, creation_date, price, status)
VALUES
    (1, 'Salfa', 'Ayu', 'Alecia', 'judul1', 'desc1', 1, CURRENT_TIMESTAMP(), 100, 'limited'),
    (2, 'Nakahara', 'Chuuya', 'San', 'judul2', 'desc2', 8, CURRENT_TIMESTAMP(), 98, 'available'),
    (3, 'Osamu', 'Dazai', 'San', 'judul3', 'desc3', 0, CURRENT_TIMESTAMP(), 99, 'out of stock')
;

-- Select all table rows --
SELECT * FROM books;

-- Alias --
SELECT
    id AS ID,
    author1 AS A1,
    author2 AS A2,
    author3 AS A3
FROM books;

-- Where 'id' --
SELECT * FROM books WHERE id = 2;

-- Where AND --
SELECT * FROM books WHERE author3 = 'San' AND title = 'judul3';

-- Where OR --
SELECT * FROM books WHERE id = 1 OR status = 'available';

-- Where NOT --
SELECT * FROM books WHERE NOT status = 'out of stock';

-- Sort by 'id'--
SELECT * FROM books ORDER BY id ASC;

-- Select Limit --
SELECT * FROM books LIMIT 2;

-- Update table --
UPDATE books
SET author1 = 'Nakamura',
    price = 88
WHERE id = 2;

-- Delete row --
DELETE FROM books WHERE id = 3;