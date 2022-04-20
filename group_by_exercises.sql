USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e';

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name like '%q%'
AND (last_name NOT LIKE '%qu%')
GROUP BY last_name;

SELECT gender, COUNT(*)
FROM employees
WHERE first_name = 'Irena' OR first_name ='Vidya'
        OR first_name = 'Maya'
GROUP BY gender;
