-- Create Database
CREATE DATABASE shop_db;

-- Show Database List
SHOW DATABASES;

-- Use Database
USE shop_db;

-- Create Table
CREATE TABLE member (
	member_id CHAR(8) NOT NULL PRIMARY KEY,
    member_name CHAR(5) NOT NULL,
    member_addr CHAR(20)
);

CREATE TABLE product  (
	product_name CHAR(4) NOT NULL PRIMARY KEY,
    cost INT NOT NULL,
    make_date DATE,
    company CHAR(5),
    amount INT NOT NULL
);

DESCRIBE member;

INSERT INTO member (member_id, member_name, member_addr) VALUES ('tess', '나훈아','경기도 부천시 중동');
INSERT INTO shop_db.member (member_id, member_name, member_addr) VALUES ('hero', '임영웅', '서울 은평구 증산동');
INSERT INTO shop_db.member (member_id, member_name, member_addr) VALUES ('iyou', '아이유', '인천 남구 주안동');
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('jyp', '박진영', '경기 고양시 장항동');

SELECT * FROM member LIMIT 100;

INSERT INTO shop_db.product (product_name, cost, make_date, company, amount) VALUES ('바나나', 1500, '2021-07-01', '델몬트', 17);
INSERT INTO shop_db.product (product_name, cost, make_date, company, amount) VALUES ('삼각김밥', 800, '2023-09-01', 'CJ', 22);
INSERT INTO shop_db.product (product_name, cost, make_date, company, amount) VALUES ('카스', 2500, '2022-03-01', 'OB', 3);

SELECT * FROM product LIMIT 100;

INSERT INTO shop_db.member (member_id, member_name, member_addr) VALUES ('carry', '머라이어', '영국 런던');
UPDATE `shop_db`.`member` SET `member_addr` = '미국 뉴욕 헌팅턴' WHERE (`member_id` = 'carry');
DELETE FROM `shop_db`.`member` WHERE (`member_id` = 'carry');

-- Select From
SELECT * FROM member LIMIT 100;
SELECT member_id, member_name FROM member WHERE member_name = '아이유';
