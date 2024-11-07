-- USE database;
USE market_db;

-- SELECT AVG(column) AS alias FROM table;
SELECT AVG(price) AS "평군 가격" FROM market_db.buy;

-- CAST(value AS TYPE [(length)] ), CONVERT(value, TYPE [(length)])
-- TYPE : CHAR, SIGNED (INTEGER), UNSIGNED (INTEGER), DATA, TIME, DATETIME

-- SELECT CAST(value AS SIGNED INTEGER) AS alias FROM table;
SELECT CAST(AVG(price) AS SIGNED INTEGER) AS '평균 가격' FROM market_db.buy;

-- SELECT CONVERT(value, UNSIGNED INTEGER) alias FROM table;
SELECT CONVERT(AVG(price), UNSIGNED INTEGER) '평균 가격' FROM market_db.buy;

-- SELECT CAST(value AS DATE) AS alias;
SELECT CAST('2022$12%12' AS DATE) AS 'CASTED DATE $';
SELECT CAST('2022/12/12' AS DATE) 'CASTED DATE /';
SELECT CONVERT("2022%12%12", DATE) AS "CONVERTED DATE %";
SELECT CONVERT("2022@12@12", DATE) "CONVERTED DATE @";

-- SELECT column, CONCAT(CAST(value AS CHAR), character, CONVERT(value, CHAR), character) alias, column * column alias FROM table;
SELECT num, CONCAT(CAST(price AS CHAR), ' X ', CONVERT(amount, CHAR), ' = ') '가격 X 수량', price * amount '구매액'
	FROM market_db.buy;
SELECT num, CONCAT(price, ' * ', amount, '=') '가격 * 수량', price * amount '구매액'
	FROM market_db.buy;
    
-- Implicit Type Conversion
SELECT 100 + '200', '100' + '200', CONCAT('100', '200'), CONCAT(100, '200');
