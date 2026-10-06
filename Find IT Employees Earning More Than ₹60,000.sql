1. Question Heading
Find IT Employees Earning More Than ₹60,000
2. Question Description
You are given the same employees table.
Find all employees who:
- Work in the IT department, and
- Have a salary greater than ₹60,000
Return:
- employee_id
- employee_name
- salary
Sort the results by salary in ascending order.
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

Write your query to retrieve the required employees.
4. Right Answer — Retrieve This
employee_id	employee_name	salary
105	Vishnu	65000
103	Rahul	72000


5. Right Query
SELECT employee_id, employee_name, salary
FROM employees
WHERE department = 'IT'
  AND salary > 60000
ORDER BY salary ASC;