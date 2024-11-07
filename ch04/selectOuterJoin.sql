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
    
-- LEFT OUTER JOIN
SELECT * 
	FROM market_db.member AS table_member 
    LEFT OUTER JOIN market_db.buy AS table_buy
    ON table_member.mem_id = table_buy.mem_id;
SELECT * 
	FROM market_db.buy AS table_buy
    LEFT OUTER JOIN market_db.member AS table_member 
    ON table_buy.mem_id = table_member.mem_id;
    
-- RIGHT OUTER JOIN
SELECT * 
	FROM market_db.member AS table_member 
    RIGHT OUTER JOIN market_db.buy AS table_buy 
    ON table_member.mem_id = table_buy.mem_id;
SELECT *
	FROM market_db.buy AS table_buy
    RIGHT OUTER JOIN market_db.member AS table_member
    ON table_buy.mem_id = table_member.mem_id;

-- SELECT column FROM table AS alias INNER JOIN table AS alias ON column(condition) = column(condition) ORDER BY column (ASC);
SELECT table_member.mem_id, table_member.mem_name, table_buy.prod_name, table_member.addr 
	FROM market_db.member AS table_member
    INNER JOIN market_db.buy AS table_buy 
    ON table_member.mem_id = table_buy.mem_id 
    ORDER BY table_member.mem_id;
    
-- SELECT column FROM table AS alias LEFT OUTER JOIN table AS alias
SELECT table_member.mem_id, table_member.mem_name, table_buy.prod_name, table_member.addr
	FROM market_db.member AS table_member 
    LEFT OUTER JOIN market_db.buy AS table_buy	
    ON table_member.mem_id = table_buy.mem_id 
    ORDER BY table_member.mem_id;

-- SELECT DISTINCT column FROM table alias LEFT OUTER JOIN table AS alias ON column(condition) = column(condition) WHERE column IS NULL ORDER BY column (ASC);
SELECT DISTINCT table_member.mem_id, mem_name 
	FROM market_db.member table_member 
    LEFT OUTER JOIN market_db.buy table_buy
    ON table_member.mem_id = table_buy.mem_id
    WHERE table_buy.prod_name IS NULL 
    ORDER BY table_member.mem_id;