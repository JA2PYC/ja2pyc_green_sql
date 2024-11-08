-- FULL OUTER JOIN

-- USE database;
USE market_db;

-- FULL OUTER JOIN 
-- MySQL doesn't support FULL OUTER JOIN
-- SELECT *
-- 	FROM market_db.member AS table_member 
-- 	FULL OUTER JOIN market_db.buy AS table_buy
--     ON mem_id = table_buy.mem_id;

-- USE UNION
SELECT * 
	FROM market_db.member AS table_member
    LEFT OUTER JOIN market_db.buy AS table_buy 
    ON table_member.mem_id = table_buy.mem_id
UNION
SELECT * 
	FROM market_db.member AS table_member 
	RIGHT OUTER JOIN market_db.buy AS table_buy 
    ON table_member.mem_id = table_buy.mem_id;