
USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like 'e%e'
ORDER BY emp_no DESC;

# Find all employees born on Christmas — 842 rows.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date like '%-12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date like '%-12-25'
  AND (hire_date like '199%');

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT first_name, last_name
FROM employees
WHERE birth_date like '%-12-25'
AND (hire_date like '199%')
ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date)) AS `Days at Company`,
       CONCAT(first_name, ' ', last_name)                      AS `NAME`
FROM employees
WHERE  hire_date LIKE '199%'
and birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;



