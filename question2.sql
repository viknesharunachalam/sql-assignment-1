--------------------------------------------------
Question 2: Employees in a Specific Region
--------------------------------------------------

Write an SQL query to find all employees who work in the "South" region
and belong to either the "Sales" or "Marketing" department.

The query should:
    - Select employee_name, department, region, and salary
    - Use WHERE with AND / OR conditions
    - Sort results by department, then by employee_name alphabetically

Expected Output Format:
+-----------------+------------+--------+----------+
| EMPLOYEE_NAME   | DEPARTMENT | REGION | SALARY   |
+-----------------+------------+--------+----------+
| Anjali Verma    | Marketing  | South  | 70000.00 |
| Sneha Reddy     | Sales      | South  | 68000.00 |
| ...             | ...        | ...    | ...      |
+-----------------+------------+--------+----------+

Hints:
- Use WHERE region = 'South' AND (department = 'Sales' OR department = 'Marketing')
- Remember to use parentheses when combining AND with OR
- Use ORDER BY department, employee_name



-- Question 2
SELECT employee_name, department, region, salary
FROM EMPLOYEES
WHERE region = 'South'
  AND (department = 'Sales' OR department = 'Marketing')
ORDER BY department, employee_name;
