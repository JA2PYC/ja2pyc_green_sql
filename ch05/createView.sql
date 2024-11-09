-- CREATE VIEW

-- USE database;
USE market_db;

-- CREATE VIEW view_name AS SELECT column FROM table
CREATE VIEW market_db.v_member AS
	SELECT mem_id, mem_name, addr 
		FROM market_db.member;

-- SELECT column FROM table
SELECT * FROM market_db.member;
SELECT * FROM market_db.v_member;

-- COMPLEX VIEW

-- CREATE VIEW view_name AS SELECT column FROM table alias INNER JOIN table alias ON column(condition) = column(condition);
CREATE VIEW v_memberbuy AS
	SELECT table_member.mem_id, prod_name, addr, CONCAT(phone1, '-', phone2) AS phone 	
    FROM market_db.buy table_buy 
    INNER JOIN market_db.member table_member 
    ON table_buy.mem_id = table_member.mem_id;
    
-- SELECT column FROM table;
SELECT * FROM v_memberbuy;