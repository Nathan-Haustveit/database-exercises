USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date AS DOB FROM employees
                                                                                                   limit 10;