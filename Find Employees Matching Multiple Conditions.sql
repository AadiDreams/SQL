1. Question Heading
Find Employees Matching Multiple Conditions
2. Question Description
You are given an employees table.
Find employees who satisfy either of these conditions:
- They work in the IT department and earn more than ₹60,000, OR
- They work in the Finance department and earn more than ₹70,000
Return:
- employee_id
- employee_name
- department
- salary
Sort the results by employee_id in ascending order.
3. Tables/Data Query
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
(108, 'Neha', 'IT', 49000),
(109, 'Kiran', 'Finance', 68000),
(110, 'Diya', 'IT', 58000);

Write your query to retrieve the required employees.
4. Right Answer — Retrieve This
employee_id	employee_name	department	salary
103	Rahul	IT	72000
105	Vishnu	IT	65000
107	Akhil	Finance	85000


5. Right Query
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE (department = 'IT' AND salary > 60000)
   OR (department = 'Finance' AND salary > 70000)
ORDER BY employee_id ASC;

Concept being practiced: AND, OR, and using parentheses to control condition precedence.