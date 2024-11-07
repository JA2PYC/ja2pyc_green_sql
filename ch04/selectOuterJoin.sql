-- SELECT OUTER JOIN

-- USE database;
USE market_db;

-- SELECT column FROM table LIMIT count;
SELECT * FROM market_db.member LIMIT 100;
SELECT * FROM market_db.buy LIMIT 100;

-- INNER JOIN
SELECT * 
	FROM market_db.member AS table_member 
    INNER JOIN market_db.buy AS table_buy
    ON table_member.mem_id = table_buy.mem_id;
    
-- OUTER JOIN
SELECT * 
	FROM market_db.member AS table_member 
    LEFT OUTER JOIN market_db.buy AS table_buy
    ON table_member.mem_id = table_buy.mem_id;

-- SELECT column FROM table AS alias LEFT OUTER JOIN table AS alias
SELECT table_member.mem_id, table_member.mem_name, table_buy.prod_name, table_member.addr
	FROM market_db.member AS table_member 
    LEFT OUTER JOIN market_db.buy AS table_buy	
    ON table_member.mem_id = table_buy.mem_id 
    ORDER BY table_member.mem_id;

SELECT table_member.mem_id, table_member.mem_name, table_buy.prod_name, table_member.addr 
	FROM market_db.member AS table_member
    INNER JOIN market_db.buy AS table_buy 
    ON table_member.mem_id = table_buy.mem_id 
    ORDER BY table_member.mem_id;