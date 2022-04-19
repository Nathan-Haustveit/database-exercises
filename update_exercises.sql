
USE codeup_test_db;

SELECT name as 'All albums in your table.' FROM albums;
UPDATE albums
SET sales = sales * 10;

SELECT name as 'All albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name as 'All albums by Michael Jackson' FROM albums where artist = 'Michael Jackson';
UPDATE albums
SET artist  = 'Peter Jackson'
WHERE artist = 'Michael Jackson';



