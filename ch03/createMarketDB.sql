-- Drop Database
-- DROP DATABASE IF EXISTS market_db;

-- Create Database
CREATE DATABASE market_db;

-- Show Databases
SHOW DATABASES;

-- Use Database
USE market_db;

-- Create Table member
CREATE TABLE market_db.member (
	mem_id CHAR(8) NOT NULL PRIMARY KEY,
    mem_name VARCHAR(10) NOT NULL,
    mem_number INT NOT NULL,
    addr CHAR(2) NOT NULL,
    phone1 CHAR(3),
    phone2 CHAR(8),
    height SMALLINT,
    debut_date DATE
);

DESCRIBE market_db.member;

-- Create Table buy
CREATE TABLE market_db.buy (
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	mem_id CHAR(8) NOT NULL,
    prod_name CHAR(6) NOT NULL,
    group_name CHAR(4),
    price INT NOT NULL,
    amount SMALLINT NOT NULL,
    FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

DESCRIBE market_db.buy;

-- Drop Table
-- DROP TABLE market_db.member;
-- DROP TABLE market_db.buy;

SHOW TABLES;

-- Insert Into Values member
INSERT INTO market_db.member VALUES ('TWC', '트와이스', 9, '서울', '02', '12345678', 167, '2015-10-19');
INSERT INTO market_db.member VALUES 
	('BLK', '블랙핑크', 4, '강남', '055', '22222222', 163, '2016.08.08'),
    ('WNM', '여자친구', 6, '경기', '031', '33333333', 166, '2015.01.15'),
    ('OMY', '오마이걸', 7, '서울', NULL, NULL, 160, '2015.04.21');
INSERT INTO market_db.member VALUES 
	('GRL', '소녀시대', 8, '서울', '02', '44444444', 168, '2007-08-02'),
    ('ITZ', '잇지', 5, '경남', NULL, NULL, 167, '2019-02-12');
INSERT INTO market_db.member VALUE
	("RED", "레드벨벳", 4, "경북", "054", "55555555", 161, "2014-08-01"),
    ('APN', "에이핑크", 6, '경기', "031", '77777777', 164, "2011-02-10");
INSERT INTO market_db.member VALUES
	('SPC', '우주소녀', 13, '서울', '02', '88888888', 162, '20160225');
INSERT INTO market_db.member VALUES 
	('MMU', '마마무', 4, '전남', '061', '99999999', 165, '20140619');
    
-- Insert Into Values buy
INSERT INTO market_db.buy VALUES (NULL, 'BLK', '지갑', NULL, 30, 2);
INSERT INTO market_db.buy VALUES 
	(NULL, 'BLK', '맥북프로', '디지털', 1000, 1),
    (NULL, 'APN', '아이폰', '디지털', 200, 1),
    (NULL, 'MMU', '아이폰', '디지털', 200, 5),
    (NULL, 'BLK', '청바지', '패션', 50, 3),
    (NULL, 'MMU', '에어팟', '디지털', 80, 10),
    (NULL, 'GRL', '혼공SQL', '서적', 15, 5),
    (NULL, 'APN', '혼공SQL', '서적', 15, 2),
    (NULL, 'APN', '청바지', '패션', 50, 1),
    (NULL, 'MMU', '지갑', NULL, 30, 1),
    (NULL, 'APN', '혼공SQL', '서적', 15, 1),
    (NULL, 'MMU', '지갑', NULL, 30, 4);
    
SELECT * FROM market_db.member LIMIT 100;
SELECT * FROM market_db.buy LIMIT 100;
