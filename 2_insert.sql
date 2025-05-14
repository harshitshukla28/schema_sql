-- Authors
INSERT INTO authors (name, country) VALUES
('J.K. Rowling', 'UK'),
('George Orwell', 'UK'),
('Dan Brown', 'USA');

-- Books
INSERT INTO books (title, genre, price, author_id) VALUES
('Harry Potter', 'Fantasy', 19.99, 1),
('1984', 'Dystopian', 15.99, 2),
('Angels & Demons', 'Thriller', 22.50, 3);

-- Customers
INSERT INTO customers (name, email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com');

-- Orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-05-10'),
(2, '2025-05-11');

-- Order Details
INSERT INTO order_details (order_id, book_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1);
