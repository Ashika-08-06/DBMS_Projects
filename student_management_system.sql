CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students
(student_id, name, age, email, course)
VALUES
(1, 'Rahul', 20, 'rahul@gmail.com', 'Python'),
(2, 'Priya', 21, 'priya@gmail.com', 'Java'),
(3, 'Aman', 20, 'aman@gmail.com', 'Python'),
(4, 'Neha', 22, 'neha@gmail.com', 'Web Development'),
(5, 'Riya', 21, 'riya@gmail.com', 'JavaScript');

SELECT * FROM students;

SELECT name, course
FROM students;


SELECT *
FROM students
WHERE student_id = 2;


SELECT *
FROM students
WHERE course = 'Python';


SELECT *
FROM students
WHERE age = 20;


SELECT *
FROM students
WHERE age > 20;



SELECT *
FROM students
WHERE age BETWEEN 20 AND 21;


SELECT *
FROM students
WHERE course = 'Python'
   OR course = 'Java';


SELECT *
FROM students
ORDER BY name ASC;



SELECT *
FROM students
ORDER BY age DESC;


SELECT *
FROM students
WHERE name LIKE 'R%';

UPDATE students
SET course = 'Web Development'
WHERE student_id = 1;


UPDATE students
SET email = 'priya123@gmail.com'
WHERE student_id = 2;



SELECT * FROM students;



SELECT COUNT(*) AS total_students
FROM students;


SELECT MAX(age) AS oldest_age
FROM students;



SELECT MIN(age) AS youngest_age
FROM students;



DELETE FROM students
WHERE student_id = 5;

SELECT * FROM students;
