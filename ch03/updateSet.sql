-- USE database;
USE market_db;

SELECT * FROM market_db.city_popul;

ALTER TABLE market_db.city_popul MODIFY city_name CHAR(35) PRIMARY KEY;
ALTER TABLE market_db.city_popul DROP PRIMARY KEY;
ALTER TABLE market_db.city_popul ADD city_num INT AUTO_INCREMENT PRIMARY KEY;

-- UPDATE table SET column = value, column = value;
-- In Safe Mode 
-- UPDATE table SET column = value WHERE column(PRIMARY KEY) = value; 
UPDATE market_db.city_popul SET city_name = '서울' 
	WHERE city_num = 6874;
-- UPDATE table AS alias JOIN reference AS alias ON column (condition) = column (condition) SET column = value;
UPDATE market_db.city_popul AS cp
	JOIN (SELECT city_num FROM market_db.city_popul WHERE city_name = '서울' LIMIT 1) AS temp
	ON cp.city_num = temp.city_num
	SET cp.city_name = 'Seoul';
-- UPDATE table SET column = value  WHERE column = value LIMIT count;
UPDATE market_db.city_popul SET city_name = 'Seoul' 
	WHERE city_name = '서울' LIMIT 100;
-- UPDATE table AS alias JOIN reference AS alias ON column (condition) = column (condition) SET column = value;
UPDATE market_db.city_popul AS cp
	JOIN (SELECT city_num FROM market_db.city_popul WHERE city_name = 'Seoul') AS temp
	ON cp.city_num = temp.city_num
	SET cp.city_name = '서울';

-- SELECT * FROM table WHERE column = value OR column = value;
SELECT * FROM market_db.city_popul WHERE city_name = 'seoul' OR city_name = '서울';

-- UPDATE SET column = value, column = value
UPDATE market_db.city_popul AS cp
	JOIN (SELECT city_num FROM market_db.city_popul WHERE city_name = 'seoul' OR city_name = '서울') AS temp
    ON cp.city_num = temp.city_num
    SET cp.city_name = '서울', cp.population = 9981619;
    
-- UPDATE ALL column data (Don't use it)
UPDATE market_db.city_popul SET city_name = '서울'; -- Error Code 1175
UPDATE market_db.city_popul SET population = population / 10000; -- Error Code 1175

SELECT * FROM market_db.city_popul LIMIT 100;
