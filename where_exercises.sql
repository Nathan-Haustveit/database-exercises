USE employees;

SELECT *
FROM employees
WHERE gender = 'M'
    AND (
      first_name = 'Irena' OR first_name ='Vidya'
      OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name like 'e%' OR last_name like '%e';

SELECT *
FROM employees
WHERE last_name like 'e%e';

SELECT *
FROM employees
WHERE last_name like '%q%'
    AND (
        last_name NOT LIKE '%qu%');
