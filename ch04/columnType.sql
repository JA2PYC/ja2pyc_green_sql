-- column TYPE

-- USE database;
USE market_db;

-- TYPE INT
-- CREATE TABLE table (column TYPE, column TYPE);
CREATE TABLE market_db.hongong4 (
	tinyint_col TINYINT,
    smallint_col SMALLINT,
    int_col INT,
    bigint_col BIGINT
    );

-- DESCRIBE table;
DESCRIBE market_db.hongong4;

-- DESCRIBE TABLE table;
DESCRIBE TABLE market_db.hongong4;

-- SELECT * FROM table LIMIT count;
SELECT * FROM market_db.hongong4 LIMIT 100;

-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.hongong4 VALUES (127, 32767, 2147483647, 9000000000000000000);
INSERT INTO market_db.hongong4 VALUES (128, 32768, 2147483648, 90000000000000000000);

-- DROP TABLE table;
DROP TABLE market_db.hongong4;

-- TYPE CHAR
-- CREATE TABLE table (column TYPE, column TYPE);
CREATE TABLE market_db.movie (
	movie_id INT,
    movie_title VARCHAR(30),
    movie_director VARCHAR(20),
    movie_star VARCHAR(20),
    movie_script LONGTEXT,
    movie_film LONGBLOB
    );
    
-- DESCRIBE table;
DESCRIBE market_db.movie;

-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.movie VALUES (1, '123456789012345678901234567890', '12345678901234567890', '12345678901234567890', 'TEXT', NULL);

-- SELECT column FROM table;
SELECT * FROM market_db.movie;

-- TYPE FLOAT, DOUBLE
ALTER TABLE market_db.movie
	ADD movie_rate FLOAT,
    ADD movie_value DOUBLE;
    
-- UPDATE table SET column = value WHERE column = value LIMIT count;
UPDATE market_db.movie SET movie_rate = 9.9, movie_value = 3.14159 WHERE movie_id = 1 LIMIT 1;

-- TYPE DATE, TIME, DATETIME
ALTER TABLE market_db.movie
	ADD movie_release DATE,
    ADD movie_runtime TIME,
    ADD movie_modified DATETIME;
    
-- UPDATE table SET column = value, column = value WHERE column = value LIMIT count;
UPDATE market_db.movie SET movie_release = '20221212', movie_runtime = '02:03:30', movie_modified = '20221215045615' WHERE movie_id = 1 LIMIT 1;