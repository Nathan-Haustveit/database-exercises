CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
    );

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUE ('Frank Ocean', 'Channel Orange', 2012, 3267780, 'R&B');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUE ('Drake', 'Nothing Was The Same', 2013, 9209000, 'Hip-Hop, Rap');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUE ('A$AP ROCKY', 'At. Long. Last. ASAP', 2015, 1390000, 'Hip-Hop, Rap');

SELECT * FROM albums WHERE release_date > 1995;
SELECT artist FROM albums WHERE sales between 1000000 and 3000000;


DESCRIBE albums;
SHOW CREATE TABLE albums;