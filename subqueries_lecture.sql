USE employees;

SELECT emp_no FROM dept_manager ;

SELECT CONCAT(first_name, ' ', last_name) AS Name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );

USE codeup_test_db;

SELECT * FROM preferences;

INSERT INTO preferences (person_id, album_id) VALUES ((SELECT person_id FROM persons WHERE first_name = 'Tareq'), (SELECT id FROM albums WHERE name = 'Rumours'));

SELECT first_name, name FROM persons JOIN preferences p ON persons.id = p.person_id JOIN albums a ON p.album_id = a.id WHERE first_name = 'Tareq';

UPDATE preferences
    SET album_id = (SELECT id FROM albums WHERE name = 'Led Zeplin IV') WHERE album_id = (SELECT id FROM albums WHERE name = 'Rumors') AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq');



