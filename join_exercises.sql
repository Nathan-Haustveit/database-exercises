USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+

SELECT  dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+

SELECT  dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name;


# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

SELECT title AS title, COUNT(title) AS Total
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
    WHERE dept_no = 'd009'
        AND t.to_date = '9999-01-01'
        AND de.to_date = '9999-01-01'
GROUP BY title;

# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

SELECT  dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS `Salary`
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

# Bonus Find the names of all current employees, their department name, and their current manager's name .

# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
    FROM employees e
        JOIN dept_emp de ON e.emp_no = de.emp_no
        JOIN departments d on de.dept_no = d.dept_no
        JOIN dept_manager dm ON d.dept_no = dm.dept_no
        JOIN employees e2 ON dm.emp_no =e2.emp_no
WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999;
