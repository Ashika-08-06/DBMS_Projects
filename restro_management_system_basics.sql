
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    Age INT,
    City VARCHAR(30),
    Phone VARCHAR(15)
);

INSERT INTO Customers VALUES
(101, 'Ashika', 21, 'Mumbai', '9876543210'),
(102, 'Rahul', 23, 'Pune', '9876543211'),
(103, 'Priya', 20, 'Mumbai', '9876543212'),
(104, 'Amit', 25, 'Delhi', '9876543213'),
(105, 'Sneha', 22, 'Panvel', '9876543214'),
(106, 'Neha', 24, 'Pune', '9876543215'),
(107, 'Karan', 26, 'Mumbai', '9876543216'),
(108, 'Riya', 19, 'Nashik', '9876543217');

CREATE TABLE Categories (
    CategoryID INT,
    CategoryName VARCHAR(30)
);

INSERT INTO Categories VALUES
(1, 'Starters'),
(2, 'Main Course'),
(3, 'Desserts'),
(4, 'Beverages');

CREATE TABLE Menu (
    FoodID INT,
    FoodName VARCHAR(50),
    CategoryID INT,
    Price INT,
    Available VARCHAR(10)
);

INSERT INTO Menu VALUES
(201, 'Paneer Tikka', 1, 220, 'Yes'),
(202, 'Veg Manchurian', 1, 180, 'Yes'),
(203, 'Veg Biryani', 2, 250, 'Yes'),
(204, 'Butter Naan', 2, 60, 'Yes'),
(205, 'Chocolate Brownie', 3, 150, 'Yes'),
(206, 'Ice Cream', 3, 100, 'No'),
(207, 'Cold Coffee', 4, 120, 'Yes'),
(208, 'Fresh Lime Soda', 4, 80, 'Yes'),
(209, 'Masala Dosa', 2, 140, 'Yes'),
(210, 'Gulab Jamun', 3, 90, 'Yes');

CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Role VARCHAR(30),
    Salary INT,
    City VARCHAR(30)
);

INSERT INTO Employees VALUES
(301, 'Rohan', 'Chef', 25000, 'Mumbai'),
(302, 'Neha', 'Manager', 35000, 'Mumbai'),
(303, 'Karan', 'Waiter', 15000, 'Panvel'),
(304, 'Pooja', 'Chef', 27000, 'Pune'),
(305, 'Arjun', 'Waiter', 16000, 'Mumbai'),
(306, 'Sneha', 'Cashier', 20000, 'Pune');

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount INT,
    OrderStatus VARCHAR(20)
);

INSERT INTO Orders VALUES
(401, 101, '2026-11-15', 500, 'Completed'),
(402, 102, '2026-11-15', 350, 'Pending'),
(403, 103, '2026-11-16', 700, 'Completed'),
(404, 104, '2026-11-16', 250, 'Cancelled'),
(405, 105, '2026-11-17', 450, 'Pending'),
(406, 106, '2026-11-17', 800, 'Completed'),
(407, 107, '2026-11-17', 300, 'Pending'),
(408, 108, '2026-11-17', 600, 'Completed');

CREATE TABLE Payments (
    PaymentID INT,
    OrderID INT,
    PaymentMethod VARCHAR(20),
    Amount INT,
    PaymentStatus VARCHAR(20)
);

INSERT INTO Payments VALUES
(501, 401, 'UPI', 500, 'Paid'),
(502, 402, 'Cash', 350, 'Pending'),
(503, 403, 'Card', 700, 'Paid'),
(504, 404, 'UPI', 250, 'Refunded'),
(505, 405, 'Cash', 450, 'Pending'),
(506, 406, 'Card', 800, 'Paid'),
(507, 407, 'UPI', 300, 'Pending'),
(508, 408, 'Cash', 600, 'Paid');

SELECT * FROM Customers;
SELECT * FROM Categories;
SELECT * FROM Menu;
SELECT * FROM Employees;
SELECT * FROM Orders;
SELECT * FROM Payments;

SELECT * FROM Customers WHERE City = 'Mumbai';
SELECT * FROM Customers WHERE Age > 21;
SELECT * FROM Menu WHERE Available = 'Yes';
SELECT * FROM Menu WHERE Price > 150;
SELECT * FROM Employees WHERE Salary > 20000;
SELECT * FROM Customers WHERE City = 'Mumbai' AND Age > 20;
SELECT * FROM Customers WHERE City = 'Mumbai' OR City = 'Pune';
SELECT * FROM Orders WHERE NOT OrderStatus = 'Completed';

UPDATE Menu
SET Price = 230
WHERE FoodID = 201;

DELETE FROM Customers
WHERE CustomerID = 108;

SELECT * FROM Menu ORDER BY Price ASC;

SELECT * FROM Menu ORDER BY Price DESC;

SELECT DISTINCT City FROM Customers;

SELECT * FROM Menu ORDER BY Price DESC LIMIT 3;

SELECT * FROM Customers LIMIT 5;

SELECT * FROM Menu
WHERE Price BETWEEN 100 AND 250;

SELECT * FROM Customers
WHERE City IN ('Mumbai', 'Pune', 'Panvel');

SELECT * FROM Customers
WHERE City NOT IN ('Mumbai');

SELECT * FROM Menu
WHERE FoodName LIKE 'V%';

SELECT * FROM Menu
WHERE FoodName LIKE '%Coffee%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * FROM Customers
WHERE CustomerName LIKE '____';

ALTER TABLE Customers
ADD Email VARCHAR(60);

SELECT * FROM Customers
WHERE Email IS NULL;

SELECT * FROM Customers
WHERE Email IS NOT NULL;

SELECT FoodName AS DishName,
       Price AS DishPrice
FROM Menu;

SELECT COUNT(*) AS TotalFoodItems
FROM Menu;

SELECT SUM(Price) AS TotalMenuPrice
FROM Menu;

SELECT AVG(Price) AS AveragePrice
FROM Menu;

SELECT MAX(Price) AS HighestPrice
FROM Menu;

SELECT MIN(Price) AS LowestPrice
FROM Menu;

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT CategoryID,
       COUNT(*) AS TotalItems
FROM Menu
GROUP BY CategoryID;

SELECT CategoryID,
       AVG(Price) AS AveragePrice
FROM Menu
GROUP BY CategoryID;

SELECT CategoryID,
       MAX(Price) AS HighestPrice
FROM Menu
GROUP BY CategoryID;

SELECT CategoryID,
       COUNT(*) AS TotalItems
FROM Menu
GROUP BY CategoryID
HAVING COUNT(*) > 2;

SELECT City,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY City;

SELECT City,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(*) >= 2;

SELECT * FROM Menu
ORDER BY Price ASC
LIMIT 5;

SELECT * FROM Menu
WHERE Price BETWEEN 100 AND 200;

SELECT * FROM Customers
WHERE City IN ('Mumbai', 'Nashik');

SELECT * FROM Orders
ORDER BY TotalAmount DESC;

SELECT OrderStatus,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;

SELECT AVG(TotalAmount) AS AverageOrderAmount
FROM Orders;

SELECT MAX(Salary) AS HighestSalary
FROM Employees;

SELECT CategoryID,
       COUNT(*) AS TotalDishes
FROM Menu
GROUP BY CategoryID;

SELECT CategoryID,
       COUNT(*) AS TotalDishes
FROM Menu
GROUP BY CategoryID
HAVING COUNT(*) > 2;

SELECT * FROM Menu
WHERE FoodName LIKE '%a%';
