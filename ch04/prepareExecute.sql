-- PREPARE EXECUTE

-- USE database;
USE market_db;

-- PREPARE prepare_name FROM 'SQL Query';
PREPARE preQuery FROM 'SELECT * FROM market_db.member WHERE mem_id = "BLK"';

-- EXECUTE prepare_name;
EXECUTE preQuery;

-- DEALLOCATE PREPARE preQuery;
DEALLOCATE PREPARE preQuery;

-- DROP TABLE IF EXISTS table;
DROP TABLE IF EXISTS gate_table;

-- CREATE TABLE table (column TYPE constraint);
CREATE TABLE market_db.gate_table (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    entry_time DATETIME
    );

-- SET @variable = value;    
SET @curDateTime = CURRENT_TIMESTAMP();

-- PREPARE prepare_name FROM 'SQL Query';
PREPARE preGateTable FROM 'INSERT INTO gate_table VALUES (NULL, ?)';

-- EXECUTE prepare_name USING @variable;
EXECUTE preGateTable USING @curDateTime;

-- DEALLOCATE PREPARE prepare_name;
DEALLOCATE PREPARE preGateTable;

SELECT * FROM market_db.gate_table;