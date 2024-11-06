-- USE database
USE market_db;

-- CREATE TABLE table (column TYPE, column TYPE);
CREATE TABLE market_db.hongong1 (
	toy_id INT,
    toy_name CHAR(4),
    age INT
    );

-- SELECT * FROM table
SELECT * FROM market_db.hongong1;

-- INSERT INTO table [(column, column)] VALUES (value, value);

-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.hongong1 VALUES (1, '우디', 25);

-- INSERT INTO table (column, column) VALUES (value, value);
INSERT INTO market_db.hongong1 (toy_id, toy_name) VALUES (2, '버즈');
INSERT INTO market_db.hongong1 (toy_name, age, toy_id) VALUES ('제시', 20, 3);

-- CREATE TABLE table (column TYPE CONSTRAINTS, column TYPE);
CREATE TABLE market_db.hongong2 (
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT
    );
    
SELECT * FROM market_db.hongong2;

-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.hongong2 VALUES (NULL, '보핍', 25);
INSERT INTO market_db.hongong2 VALUES (NULL, '슬링키', 22);
INSERT iNTO market_db.hongong2 VALUES (NULL, '렉스', 21);

SELECT LAST_INSERT_ID();

-- ALTER TABLE table AUTO_INCREMENT=count;
ALTER TABLE market_db.hongong2 AUTO_INCREMENT = 100;
INSERT INTO market_db.hongong2 VALUES (NULL, '재남', 35);
INSERT INTO market_db.hongong2 VALUES (NULL, '버피', 27);

SELECT * FROM market_db.hongong2;

CREATE TABLE market_db.hongong3 (
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT 
    );
    
ALTER TABLE market_db.hongong3 AUTO_INCREMENT = 1000;
SET @@auto_increment_increment = 3;

SELECT @@auto_increment_increment;
SHOW GLOBAL VARIABLES;

INSERT INTO market_db.hongong3 VALUES (NULL, '토마스', 20);
INSERT INTO market_db.hongong3 VALUES (NULL, '제임스', 23);
INSERT INTO market_db.hongong3 VALUES (NULL, '고든', 25);
INSERT INTO market_db.hongong3 VALUES 
	(NULL, '스칼렛', 27),
    (NULL, '멀더', 30),
    (NULL, '한니발', 35);

SELECT * FROM market_db.hongong3;

SELECT LAST_INSERT_ID();

-- INSERT INTO table (column, column) SELECT
SELECT COUNT(*) FROM world.city;

DESC world.city;
DESCRIBE world.city;

SELECT * FROM world.city LIMIT 5;

CREATE TABLE market_db.city_popul (
	city_name CHAR(35),
    population INT 
    );

INSERT INTO market_db.city_popul
	SELECT Name, Population FROM world.city;
    
SELECT * FROM market_db.city_popul LIMIT 100;
SELECT * FROM market_db.city_popul WHERE city_name LIKE 'se%';
SELECT * FROM market_db.city_popul ORDER BY population DESC LIMIT 100;