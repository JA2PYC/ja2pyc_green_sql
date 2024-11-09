-- PROCEDURE CASE

-- USE database;
USE market_db;

-- DROP PROCEDURE procedure_name;
DROP PROCEDURE funcPointCredit;

-- DELIMITER endmark
DELIMITER $$

-- CREATE PROCEDURE
CREATE PROCEDURE funcPointCredit(intValue INT) 
BEGIN
	DECLARE pointValue INT;
    DECLARE credit CHAR(1);
    
    SET pointValue = intValue;
    
    CASE 
		WHEN pointValue >= 90 THEN
			SET credit = 'A';
		WHEN pointValue >= 80 THEN 
			SET credit = 'B';
		WHEN pointValue >= 70 THEN 
			SET credit = 'C';
		WHEN pointValue >= 60 THEN
			SET credit = 'D';
		ELSE 
			SET credit = 'F';
	END CASE;
    
    SELECT CONCAT('점수 : ', pointValue) AS '취득 점수', CONCAT('학점 : ', credit) '취득 학점';
END $$

-- DELIMITER endmark
DELIMITER ;

-- CALL funcPointCredit();
CALL funcPointCredit(82);

-- SELECT * FROM table;
SELECT * FROM market_db.member;
SELECT * FROM market_db.buy;

-- SELECT column FROM table alias INNER JOIN table alias ON column(condition) = column(condition) GROUP BY column ORDER BY column DESC;
SELECT table_member.mem_id, mem_name, SUM(price * amount) AS total,
		CASE 
			WHEN SUM(price * amount) >= 1500 THEN 'S'
			WHEN SUM(price * amount) >= 1000 THEN 'A'
			WHEN SUM(price * amount) >= 200 THEN 'B'
			ELSE 'C'
		END grade
	FROM market_db.buy table_buy
    RIGHT OUTER JOIN market_db.member table_member
    ON table_buy.mem_id = table_member.mem_id
    GROUP BY table_member.mem_id 
    ORDER BY SUM(price * amount) DESC;
    
    
    

-- DROP PROCEDURE