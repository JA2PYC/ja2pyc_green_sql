-- STORED PROCEDURE

-- USE database;
USE market_db;

-- DROP PROCEDURE IF EXISTS procedure_name;
DROP PROCEDURE IF EXISTS funcIF;

/*
DELIMITER endmark
CREATE PROCEDURE procedure_name
BEGIN
	code
END endmark
DELIMITER ;
*/
DELIMITER $$
CREATE PROCEDURE funcIF()
BEGIN
	IF 100 = 100 THEN
		SELECT '100은 100과 같습니다.' AS '100 = 100';
	END IF;
END $$
DELIMITER ;

-- CALL procedure_name();
CALL funcIF();

-- DROP PROCEDURE procedure_name;
DROP PROCEDURE IF EXISTS funcIFELSE;

-- DELIMITER endmark
DELIMITER $$

-- CREATE PROCEDURE procedure_name BEGIN code END endmark
CREATE PROCEDURE funcIFELSE()
BEGIN 
	DECLARE myNum INT;
    SET myNum = 200;
    IF myNum = 100 THEN
		SELECT '100 입니다' AS '100';
	ELSE 
		SELECT '100이 아닙니다' AS '100';
	END IF;
END $$

-- DELIMITER endmark
DELIMITER ;

-- CALL procedure_name();
CALL funcIFELSE();

-- DROP PROCEDURE IF EXISTS procedure_name;
DROP PROCEDURE IF EXISTS funcDebutdate;

-- DELIMITER endmark
DELIMITER $$

-- CREATE PROCEDURE procedure_name() BEGIN DECLARE variable TYPE; SELECT column INTO variable FROM table WHERE column = condition; SET variable = value; IF variable = condition THEN SQL Query; ELSE SQL Query; END IF; END endmark
CREATE PROCEDURE funcDebutdate()
BEGIN 
	DECLARE debutDate DATE;
    DECLARE curDate DATE;
    DECLARE days INT;
    
    SELECT debut_date INTO debutDate 
		FROM market_db.member 
        WHERE mem_id = 'APN';
	SET curDate = CURRENT_DATE();
    SET days = DATEDIFF(curDate, debutDate);
    
    IF (days/365) >= 5 THEN 
		SELECT CONCAT('데뷔한 지 ', days, '일이 지났습니다. 축하드려요.') AS '데뷔일';
	ELSE 
		SELECT '데뷔한 지 ', days, '일이 지났습니다.';
    END IF;
END $$

-- DELIMITER endmark
DELIMITER ;

-- CALL procedure_name();
CALL funcDebutdate();
