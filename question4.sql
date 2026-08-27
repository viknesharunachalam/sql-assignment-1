--------------------------------------------------
Question 4: All Employees, With or Without Sales (LEFT JOIN)
--------------------------------------------------

Write an SQL query to list every employee, showing their sales details
where available, and NULL where an employee has not made any sales.

The query should:
    - Use LEFT JOIN between EMPLOYEES and SALES tables on employee_id
    - Display: employee_name, department, sale_date, product_category, sale_amount
    - Include ALL employees, even those with no matching rows in SALES
    - Sort results by employee_name alphabetically

Expected Output Format:
+-----------------+------------+------------+-------------------+-------------+
| EMPLOYEE_NAME   | DEPARTMENT | SALE_DATE  | PRODUCT_CATEGORY  | SALE_AMOUNT |
+-----------------+------------+------------+-------------------+-------------+
| Amit Patel      | Sales      | 2024-01-10 | Home              | 22000.00    |
| Anjali Verma    | Marketing  | NULL       | NULL              | NULL        |
| Deepa Shah      | IT         | NULL       | NULL              | NULL        |
| ...             | ...        | ...        | ...               | ...         |
+-----------------+------------+------------+-------------------+-------------+

Hints:
- Use LEFT JOIN SALES ON EMPLOYEES.employee_id = SALES.employee_id
- LEFT JOIN keeps all rows from the left table (EMPLOYEES) even without a match
- Unmatched columns from SALES will show as NULL
- Use ORDER BY employee_name


-- Question 4
SELECT e.employee_name,
       e.department,
       s.sale_date,
       s.product_category,
       s.sale_amount
FROM EMPLOYEES e
LEFT JOIN SALES s
  ON e.employee_id = s.employee_id
ORDER BY e.employee_name;
