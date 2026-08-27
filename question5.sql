--------------------------------------------------
Question 5: Departments and Their Employees (RIGHT JOIN)
--------------------------------------------------

Write an SQL query to list all departments from a DEPARTMENTS table along with
any employees assigned to them, including departments that currently have
no employees.

The query should:
    - Use RIGHT JOIN between EMPLOYEES and DEPARTMENTS tables on department_id
    - Display: department_name, employee_name, region, salary
    - Include ALL departments, even those with zero employees
    - Sort results by department_name, then employee_name

Expected Output Format:
+-----------------+-----------------+--------+----------+
| DEPARTMENT_NAME | EMPLOYEE_NAME   | REGION | SALARY   |
+-----------------+-----------------+--------+----------+
| Finance         | NULL            | NULL   | NULL     |
| IT              | Deepa Shah      | North  | 72000.00 |
| IT              | Karthik Iyer    | North  | 85000.00 |
| Marketing       | Anjali Verma    | South  | 70000.00 |
| ...             | ...             | ...    | ...      |
+-----------------+-----------------+--------+----------+

Hints:
- Use EMPLOYEES RIGHT JOIN DEPARTMENTS ON EMPLOYEES.department_id = DEPARTMENTS.department_id
- RIGHT JOIN keeps all rows from the right table (DEPARTMENTS) even without a match
- A RIGHT JOIN can also be rewritten as a LEFT JOIN by swapping table order
- Use ORDER BY department_name, employee_name


-- Question 5
SELECT d.department_name,
       e.employee_name,
       e.region,
       e.salary
FROM EMPLOYEES e
RIGHT JOIN DEPARTMENTS d
  ON e.department_id = d.department_id
ORDER BY d.department_name, e.employee_name;
