-- CROSS JOIN

-- USE database;
USE market_db;

-- SELECT column FROM table alias CROSS JOIN table alias;
SELECT * 
	FROM market_db.member
    CROSS JOIN market_db.buy;
SELECT * 
	FROM market_db.buy 
    CROSS JOIN market_db.member;
    
SELECT COUNT(*) '데이터 개수' 
	FROM sakila.inventory 
    CROSS JOIN world.city;