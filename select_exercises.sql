USE codeup_test_db;

SELECT name as 'The name of all albums by Pink Floyd.' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date as 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT name as 'Which albums were released in the 1990s' FROM albums WHERE release_date < 2000 && release_date > 1988;

SELECT name as 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' FROM albums WHERE genre = 'Rock';