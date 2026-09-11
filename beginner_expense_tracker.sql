CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(10,2),
    expense_date DATE
);

INSERT INTO expenses
(expense_id, expense_name, category, amount, expense_date)
VALUES
(1, 'Lunch', 'Food', 150.00, '2026-09-11'),
(2, 'Bus Ticket', 'Travel', 50.00, '2026-09-11'),
(3, 'Notebook', 'Education', 100.00, '2026-09-10'),
(4, 'Coffee', 'Food', 80.00, '2026-09-10'),
(5, 'Movie Ticket', 'Entertainment', 250.00, '2026-09-09');

SELECT * FROM expenses;

SELECT expense_name, amount
FROM expenses;

SELECT *
FROM expenses
WHERE category = 'Food';

SELECT *
FROM expenses
WHERE amount > 100;

SELECT *
FROM expenses
WHERE amount BETWEEN 50 AND 150;

SELECT *
FROM expenses
ORDER BY amount ASC;

SELECT *
FROM expenses
ORDER BY amount DESC;

SELECT SUM(amount) AS total_expense
FROM expenses;

SELECT AVG(amount) AS average_expense
FROM expenses;

SELECT MAX(amount) AS highest_expense
FROM expenses;

SELECT MIN(amount) AS lowest_expense
FROM expenses;

SELECT COUNT(*) AS total_expenses
FROM expenses;

UPDATE expenses
SET amount = 180.00
WHERE expense_id = 1;

SELECT * FROM expenses;

DELETE FROM expenses
WHERE expense_id = 5;

SELECT * FROM expenses;
