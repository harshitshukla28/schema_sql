-- 1. List all books with author names
SELECT b.title, b.genre, b.price, a.name AS author
FROM books b
JOIN authors a ON b.author_id = a.author_id;

-- 2. Get all orders with customer names and total books ordered
SELECT o.order_id, c.name, SUM(od.quantity) AS total_books
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.order_id, c.name;

-- 3. List books costing more than $20
SELECT title, price FROM books WHERE price > 20;

-- 4. Find customers who ordered "Harry Potter"
SELECT DISTINCT c.name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
WHERE b.title = 'Harry Potter';
