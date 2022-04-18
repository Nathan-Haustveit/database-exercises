CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
    );

DESCRIBE albums;
SHOW CREATE TABLE albums;