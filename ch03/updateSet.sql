-- USE database;
USE market_db;

SELECT * FROM market_db.city_popul;

ALTER TABLE market_db.city_popul MODIFY city_name CHAR(35) PRIMARY KEY;
ALTER TABLE market_db.city_popul DROP PRIMARY KEY;
ALTER TABLE market_db.city_popul ADD city_num INT AUTO_INCREMENT PRIMARY KEY;

-- UPDATE table SET column = value, column = value;
-- In Safe Mode -- WHERE PRIMARY KEY, LIMIT count,
UPDATE market_db.city_popul SET city_name = '서울' 
	WHERE city_num = (SELECT city_num FROM market_db.city_popul WHERE city_name = 'seoul' ) LIMIT 1;
UPDATE market_db.city_popul SET city_name = '서울' 
	WHERE city_name = 'Seoul' LIMIT 100;
UPDATE market_db.city_popul SET city_name = 'seoul' 
	WHERE city_num IN (SELECT city_num FROM market_db.city_popul WHERE city_name = '서울');
    
SELECT city_num FROM market_db.city_popul WHERE city_name = '서울' LIMIT 1;

SELECT * FROM market_db.city_popul WHERE city_name = 'seoul' OR city_name = '서울';
