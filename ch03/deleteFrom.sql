-- USE database;
USE market_db;

-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.city_popul VALUES ('울산 중구', 208668, NULL);

-- SELECT * FROM table WHERE column IN (value, value);
SELECT * FROM market_db.city_popul WHERE city_name IN ('Seoul', '서울', 'ulsan junggu', '울산 중구', '울산', 'ulsan');

-- DELETE FROM table WHERE column LIKE value;
DELETE FROM market_db.city_popul WHERE city_name LIKE 'New%'; -- Error Code 1175 Safe Mode Error
-- DELETE FROM table WHERE column (PRIMARY KEY) = value;
DELETE FROM market_db.city_popul WHERE city_num = 12241;
-- DELETE FROM talbe WHERE column = value LIMIT count;
DELETE FROM market_db.city_popul WHERE city_name = '울산 중구' OR city_name = 'Ulsan Junggu' LIMIT 1;
-- DELETE alias FROM table AS alias JOIN reference AS alias ON column (condition) = column (condition)
DELETE cp FROM market_db.city_popul AS cp 
	JOIN (SELECT city_num FROM market_db.city_popul WHERE city_name = '울산 중구' OR city_name = 'Ulsan Junggu' ) AS temp
    ON cp.city_num = temp.city_num;
