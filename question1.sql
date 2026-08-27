--------------------------------------------------
Question 1: Filtering and Sorting Employee Data
--------------------------------------------------

Write an SQL query to list all employees who earn more than 50000 in salary.

The query should:
    - Select employee_name, department, region, and salary from the EMPLOYEES table
    - Use WHERE to filter employees with salary > 50000
    - Sort the results by salary in descending order

Expected Output Format:
+-----------------+------------+--------+----------+
| EMPLOYEE_NAME   | DEPARTMENT | REGION | SALARY   |
+-----------------+------------+--------+----------+
| Karthik Iyer    | IT         | North  | 85000.00 |
| Priya Sharma    | Sales      | North  | 65000.00 |
| Sneha Reddy     | Sales      | South  | 68000.00 |
| ...             | ...        | ...    | ...      |
+-----------------+------------+--------+----------+

Hints:
- Use SELECT with specific column names, not SELECT *
- Use WHERE salary > 50000
- Use ORDER BY salary DESC


-- Answer
SELECT employee_name, department, region, salary
FROM EMPLOYEES
WHERE salary > 50000
ORDER BY salary DESC;
```
