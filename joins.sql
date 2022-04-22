USE employees;

SELECT CONCAT(last_name, ' ', first_name) AS lname, salaries.salary AS salary
FROM employees
         JOIN salaries ON employees.emp_no = salaries.emp_no;

# select first_name, last_name FROM employees WHERE last_name = 'facello'

USE codeup_test_db;

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons`
(
    `id`         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(25)  NOT NULL,
    `album_id`   INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    KEY `album_id` (`album_id`),
    CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons`
VALUES (1, 'Olivia', 29),
       (2, 'Santiago', 27),
       (3, 'Tareq', 15),
       (4, 'Anaya', 28);

# ////////  same  //////////
# longhand
SELECT persons.first_name, albums.name
FROM persons
         JOIN albums ON persons.album_id = albums.id;
# shorthand
SELECT p.first_name, a.name
FROM persons p
         JOIN albums a ON p.album_id = a.id;
SELECT p.first_name, a.name
FROM persons p
         LEFT JOIN albums a ON a.id = p.album_id;
# ///////  same  ///////////


SHOW INDEXES FROM persons;
SELECT *
FROM information_schema.table_constraints
WHERE constraint_schema = 'codeup_test_db';

CREATE TABLE preferences
(
    person_id INT UNSIGNED NOT NULL,
    album_id  INT UNSIGNED NOT NULL,
    CONSTRAINT preferences_person_id_fk FOREIGN KEY (person_id) REFERENCES persons (id),
    CONSTRAINT preferences_album_id_fk FOREIGN KEY (album_id) REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id)
VALUES (1, 12),
       (1, 5),
       (1, 22),
       (1, 29),
       (2, 1),
       (2, 31),
       (2, 30),
       (3, 11),
       (3, 26),
       (3, 25);

SELECT p.first_name AS name, a.name AS album
FROM persons p
         JOIN preferences pf ON p.id = pf.person_id
         JOIN albums a ON pf.album_id = a.id;

USE employees;


