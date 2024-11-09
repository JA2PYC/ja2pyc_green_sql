-- CREATE DATABASE 

-- CREATE DATABASE database;
CREATE DATABASE naver_db;

-- DROP DATABASE database;
-- DROP DATABASE naver_db;

-- USE database;
USE naver_db;

-- DROP TABLE IF EXISTS table;
DROP TABLE IF EXISTS naver_db.member;

-- CREATE TABLE table (column TYPE);
CREATE TABLE naver_db.member (
	mem_id CHAR(8) NOT NULL PRIMARY KEY,
    mem_name VARCHAR(10) NOT NULL,
    mem_number TINYINT NOT NULL,
    addr CHAR(2) NOT NULL,
    phone1 CHAR(3) NULL,
    phone2 CHAR(8) NULL,
    height TINYINT UNSIGNED NULL,
    debut_date DATE NULL
);

-- INSERT INTO table VALUES (value, value);
INSERT INTO naver_db.member VALUES 
	('TWC', '트와이스', 9, '서울', '02', '11111111', 167, '20151019'),
    ('BLK', '브랙핑크', 4, '경남', '055', '22222222', 163, '2016-8-8'),
    ('WMN', '여자친구', 6, '경기', '031', '33333333', 166, '2015-1-15');

-- DROP TABLE IF EXISTS table;    
DROP TABLE IF EXISTS naver_db.buy;

-- CREATE TABLE table (column TYPE);
CREATE TABLE naver_db.buy (
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    mem_id CHAR(8) NOT NULL,
    prod_name CHAR(6) NOT NULL,
    group_name CHAR(4),
    price INT UNSIGNED NOT NULL,
    amount SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(mem_id) REFERENCES naver_db.member (mem_id)
);

-- INSERT INTO table VALUES (value, value);
INSERT INTO naver_db.buy VALUES 
	(NULL, 'BLK', '지갑', NULL, 30, 2),
    (NULL, 'BLK', '맥북프로', '디지털', 1000, 1),
    (NULL, 'TWC', '아이폰', '디지털', 200, 1);
    
-- SELECT column FROM table;
SELECT * FROM naver_db.member;
SELECT * FROM naver_db.buy;