-- Use Shop DB
USE shop_db;

-- Drop Table (Don't Use)
DROP TABLE shop_db.member;

-- Alter Table Rename
ALTER TABLE shop_db.member RENAME COLUMN member_id TO mem_id;
ALTER TABLE shop_db.member RENAME COLUMN member_name TO mem_name;
ALTER TABLE shop_db.member RENAME COLUMN member_addr TO addr;

-- Alter Table DROP PRIMARY KEY, Column
ALTER TABLE shop_db.member DROP PRIMARY KEY;
ALTER TABLE shop_db.member DROP addr;

-- Alter Table Modify
ALTER TABLE shop_db.member MODIFY mem_id CHAR(8) NOT NULL PRIMARY KEY;
ALTER TABLE shop_db.member MODIFY mem_name VARCHAR(10) NOT NULL;

-- Alter Table ADD
ALTER TABLE shop_db.member ADD mem_number INT NOT NULL;
ALTER TABLE shop_db.member ADd addr CHAR(2) NOT NULL;
ALTER TABLE shop_db.member ADD age INT CHECK (age >= 19);
ALTER TABLE shop_db.member
	ADD phone1 CHAR(3),
    ADD phone2 CHAR(8),
    ADD height SMALLINT,
    ADD debut_date DATE;

DESCRIBE shop_db.member;
SELECT * FROM shop_db.member LIMIT 100;

-- Create Table
CREATE TABLE shop_db.buy (
	num INT AUTO_INCREMENT PRIMARY KEY,
    mem_id CHAR(8) NOT NULL,
    prod_name CHAR(6) NOT NULL,
    group_name CHAR(4) NULL,
    price INT UNSIGNED NOT NULL,
    aount SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (mem_id) REFERENCES shop_db.member(mem_id)
);

DROP TABLE shop_db.buy;

DESCRIBE shop_db.member;
DESCRIBE shop_db.product;
DESCRIBE shop_db.buy;

SELECT * FROM shop_db.member LIMIT 100;
SELECT * FROM shop_db.product LIMIT 100;
SELECT * FROM shop_db.buy LIMIT 100;

INSERT INTO shop_db.member VALUES ('twc', '트와이스', 9, '서울', 20, 010, 12345678, 167,'2015-10-19');

INSERT INTO shop_db.buy VALUES (NULL, 'twc', '바나나', NULL, 1500, 3);

DELETE FROM shop_db.buy WHERE num = 7;

