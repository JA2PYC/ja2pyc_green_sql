-- SET PREPARE EXECUTE

-- USE database;
USE market_db;

-- SET variable = value;
SET @myVar1 = 5;
SET @myVar2 = 4.25;
SET @txt = '가수 이름 >';
SET @height = 166;
SET @count = 3;

-- SELECT variable
SELECT @myVar1;
SELECT @myVar1 + @myVar2;
SELECT @txt, mem_name, height FROM market_db.member WHERE height > @height;
-- SELECT mem_name, height FROM market_db.member ORDER BY height LIMIT @count; -- Error Code 1064 syntax eorr

-- PREPARE statement_name FROM preparable_statement
PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY height LIMIT ?';

-- EXECUTE statement_name USING variable
EXECUTE mySQL USING @count;
