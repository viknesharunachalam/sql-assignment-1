--------------------------------------------------
Question 3: Employees and Their Sales (INNER JOIN)
--------------------------------------------------

Write an SQL query to show only employees who have made at least one sale,
along with the details of each sale.

The query should:
    - Use INNER JOIN between EMPLOYEES and SALES tables on employee_id
    - Display: employee_name, department, sale_date, product_category, sale_amount
    - Only include employees who have matching rows in the SALES table
    - Sort results by sale_amount in descending order

Expected Output Format:
+-----------------+------------+------------+-------------------+-------------+
| EMPLOYEE_NAME   | DEPARTMENT | SALE_DATE  | PRODUCT_CATEGORY  | SALE_AMOUNT |
+-----------------+------------+------------+-------------------+-------------+
| Priya Sharma    | Sales      | 2024-01-15 | Electronics       | 45000.00    |
| Sneha Reddy     | Sales      | 2024-01-22 | Electronics       | 38000.00    |
| ...             | ...        | ...        | ...               | ...         |
+-----------------+------------+------------+-------------------+-------------+

Hints:
- Use INNER JOIN SALES ON EMPLOYEES.employee_id = SALES.employee_id
- INNER JOIN only returns rows where a match exists in both tables
- Use ORDER BY sale_amount DESC


-- Question 3
SELECT e.employee_name,
       e.department,
       s.sale_date,
       s.product_category,
       s.sale_amount
FROM EMPLOYEES e
INNER JOIN SALES s
  ON e.employee_id = s.employee_id
ORDER BY s.sale_amount DESC;
