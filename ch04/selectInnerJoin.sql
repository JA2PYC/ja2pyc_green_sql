-- SELECT INNER JOIN

-- USE database;
USE market_db;

SELECT * FROM market_db.buy LIMIT 100;
SELECT * FROM market_db.member LIMIT 100;

-- SELECT column FROM table INNER JOIN table ON column(condition) = column(condition)
SELECT * FROM market_db.buy INNER JOIN market_db.member ON market_db.buy.mem_id = market_db.member.mem_id;

-- SELECT column FROM table AS alias INNER JOIN table AS alias ON column(condition) = column(condition) WHERE column = value;
SELECT * FROM market_db.buy AS table_buy INNER JOIN market_db.member AS table_member ON table_buy.mem_id = table_member.mem_id WHERE table_buy.mem_id ='GRL';
SELECT table_buy.num, table_buy.mem_id, table_member.mem_name, table_buy.prod_name, price, amount, addr, CONCAT(phone1, '-', phone2) 
	FROM market_db.buy AS table_buy
	INNER JOIN market_db.member AS table_member 
    ON table_buy.mem_id = table_member.mem_id
    WHERE table_buy.mem_id = 'BLK';

-- SELECT column FROM table AS alias INNER JOIN table AS alias ON column(condition) = column(condition) ORDER BY column ASC(DESC);
SELECT B.mem_id, M.mem_name, B.prod_name, M.addr FROM market_db.buy B INNER JOIN market_db.member M ON B.mem_id = M.mem_id ORDER BY M.mem_id;

-- SELECT DISTINCT column FROM table AS alias INNER JOIN table AS alias ON column(condition) = column(condition) ORDER BY column;
SELECT DISTINCT table_buy.mem_id, mem_name, addr 
	FROM market_db.buy AS table_buy 
    INNER JOIN market_db.member as table_member 
    ON table_buy.mem_id = table_member.mem_id
    ORDER BY table_buy.mem_id;

-- SELECT column FROM table, table WHERE (join condition);
SELECT * 
	FROM market_db.buy AS table_buy, market_db.member AS table_member 
	WHERE table_buy.mem_id = table_member.mem_id AND table_buy.mem_id = 'MMU';