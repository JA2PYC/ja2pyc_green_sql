-- CONSTRAINT FOREIGN KEY

-- USE database;
USE naver_db;

-- DROP TABLE IF EXISTS table, table;
DROP TABLE IF EXISTS naver_db.member, naver_db.buy;

CREATE TABLE naver_db.member (
	mem_id CHAR(8) NOT NULL,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED
);

-- ALTER TABLE table ADD CONSTRAINT PRIMARY KEY (column);
ALTER TABLE naver_db.member 
	ADD CONSTRAINT 
		PRIMARY KEY (mem_id);

-- ALTER TABLE table ADD CONSTRAINT UNIQUE KEY (column);
ALTER TABLE naver_db.member 
	ADD CONSTRAINT 
		UNIQUE KEY (mem_id);

CREATE TABLE naver_db.buy (
	num INT NOT NULL,
    user_id CHAR(8) NOT NULL,
    prod_name CHAR(6) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES naver_db.member(mem_id)
);

ALTER TABLE naver_db.buy 
	ADD CONSTRAINT
		FOREIGN KEY (user_id) REFERENCES naver_db.member(mem_id);

DESCRIBE naver_db.member;
DESCRIBE naver_db.buy;

-- PRIMARY KEY, FOREIGN KEY Value Change

-- ㅑINSERT INTO tabel VALUES (value, value)
INSERT INTO naver_db.member VALUES ('BLK', '브랙핑크', 163);

INSERT INTO naver_db.buy VALUES 
	(1, 'BLK', '지갑'),
    (2, 'BLK', '맥북');

SELECT * FROM naver_db.buy;