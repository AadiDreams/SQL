1. Question Heading
Find All Unique Departments
2. Question Description
You are given an employees table.
Find all the unique departments in which employees work.
Return only the department column.
Sort the department names in alphabetical order.
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
(108, 'Neha', 'IT', 49000);

Write a query to retrieve the unique departments.
4. Right Answer — Retrieve This
department
Finance
HR
IT


5. Right Query
SELECT DISTINCT department
FROM employees
ORDER BY department ASC;

Concept being practiced: DISTINCT + ORDER BY