-- PROCEDURE WHILE

-- USE database;
USE market_db;

-- DROP PROCEDURE IF EXISTS procedure_name;
DROP PROCEDURE IF EXISTS procWhile;

-- DELIMIETER endmark
DELIMITER $$

-- CREATE PROCEDURE
CREATE PROCEDURE procWhile(targetInt INT)
BEGIN
	DECLARE i INT;
    DECLARE sumValue INT;
    SET i = 0;
    SET sumValue = 0;
    
    WHILE (i < targetInt) DO
		SET sumValue = sumValue + (i+1);
        SET i = i + 1;
	END WHILE;
    
    SELECT CONCAT('1부터 ', targetInt, '까지의 합 : ') 목표, sumValue '결과';
END $$

-- DELIMITER ;
DELIMITER ;

-- CALL procedure_name();
CALL procWhile(100);

-- DROP PROCEDURE IF EXISTS precedure_name;
DROP PROCEDURE IF EXISTS procIterateLeave;

-- DELIMITER endmark
DELIMITER $$

-- CREATE PROCEDURE procedure_name() BEGIN code END endmark
CREATE PROCEDURE procIterateLeave(targetInt INT) 
BEGIN
	DECLARE i INT;
    DECLARE sum INT;
    
    SET i = 1;
    SET sum = 0;
    
    doWhile:
    WHILE ( i <= targetInt ) DO
		IF ( i % 4 = 0 ) THEN
			SET i = i + 1;
            ITERATE doWhile;
		END IF;
        IF (sum > 1000) THEN
			LEAVE doWhile;
        END IF;
        SET sum = sum + i;
        SET i = i + 1;
	END WHILE;
    
    SELECT CONCAT('1부터 ', targetInt, '까지의 합') 목표, sum 결과;
END $$

-- DELIMIETER endmark
DELIMITER ;

-- CALL procedure_name();
CALL procIterateLeave(100);
