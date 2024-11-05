-- Stored Procedure

USE shop_db;

DESCRIBE shop_db.member;
DESCRIBE shop_db.product;

SELECT * FROM shop_db.member WHERE mem_name = '나훈아';
SELECT * FROm shop_db.product WHERE product_name = '삼각김밥';

DELIMITER //
CREATE PROCEDURE myProc()
BEGIN
	SELECT * FROM shop_db.member WHERE mem_name = '아이유';
    SELECT * FROM shop_db.product WHERE product_name = '바나나';
END//
DELIMITER ;

SHOW PROCEDURE STATUS;
SHOW FUNCTION STATUS;

CALL myProc();

DROP PROCEDURE myProc;