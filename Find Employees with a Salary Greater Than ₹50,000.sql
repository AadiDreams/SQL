1. Question Heading
Find Employees with a Salary Greater Than ₹50,000

2. Question Description
You are given an employees table containing employee information.
Find all employees whose salary is greater than 50,000.
Return the following columns:
- employee_id
- employee_name
- department
- salary
Sort the results by salary in descending order.

3. Tables/Data Query
Run this first in your PostgreSQL compiler:

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (employee_id, employee_name, department, salary)
VALUES
(101, 'Arun', 'IT', 45000),
(102, 'Meera', 'HR', 55000),
(103, 'Rahul', 'IT', 72000),
(104, 'Anjali', 'Finance', 48000),
(105, 'Vishnu', 'IT', 65000),
(106, 'Sneha', 'HR', 52000),
(107, 'Akhil', 'Finance', 85000),
(108, 'Neha', 'IT', 49000);

Now write your own query to solve the problem.
4. Right Answer — Retrieve This
employee_id	employee_name	department	salary
107	Akhil	Finance	85000
103	Rahul	IT	72000
105	Vishnu	IT	65000
102	Meera	HR	55000
106	Sneha	HR	52000


5. Right Query
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;