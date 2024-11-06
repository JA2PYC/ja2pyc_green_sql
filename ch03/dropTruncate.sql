-- USE database
USE market_db;

-- DESCRIBE table
DESCRIBE world.city;
DESCRIBE sakila.country;

-- SELECT * FROM table LIMIT count;
SELECT * FROM world.city LIMIT 100;
SELECT * FROM sakila.country LIMIT 100;

-- CREATE TABLE table (SELECT * FROM table, table)
CREATE TABLE market_db.big_table1 (SELECT * FROM world.city, sakila.country);
CREATE TABLE market_db.big_table2 (SELECT * FROM world.city, sakila.country);
CREATE TABLE market_db.big_table3 (SELECT * FROM world.city, sakila.country);

-- DESCRIBE table;
DESCRIBE market_db.big_table1;
DESCRIBE market_db.big_table2;
DESCRIBE market_db.big_table3;

-- ALTER TABLE table MODIFY column TYPE constraints
ALTER TABLE market_db.big_table1 MODIFY country_id INT PRIMARY KEY; -- Error Code 1062 duplicated key
ALTER TABLE market_db.big_table1 ADD big_table_id INT AUTO_INCREMENT PRIMARY KEY;

-- SELECT func(column) FROM table;
SELECT COUNT(*) FROM big_table1;
SELECT COUNT(*) FROM big_table2;
SELECT COUNT(*) FROM big_table3;

-- SELECT column FROM table LIMIT count;
SELECT * FROM market_db.big_table1 LIMIT 100;
SELECT * FROM market_db.big_table2 LIMIT 100;
SELECT * FROM market_db.big_table3 LIMIT 100;

-- DELETE FROM table;
DELETE FROM market_db.big_table1; -- Error Code 1175 Safe Mode Error
DELETE FROM market_db.big_table1 WHERE big_table_id > 0; 
DELETE FROM market_db.big_table1 LIMIT 100;

-- DROP TABLE table;
DROP TABLE market_db.big_table2;

-- TRUNCATE TABLE table;
TRUNCATE TABLE market_db.big_table3;
