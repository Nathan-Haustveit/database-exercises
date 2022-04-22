USE employees;

DESCRIBE employees;

USE codeup_test_db;

ALTER TABLE albums
ADD UNIQUE name_key (artist, name);
