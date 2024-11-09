-- CONSTRAINT PRIMARY KEY

-- DROP TABLE IF EXISTS table, table;
DROP TABLE IF EXISTS naver_db.member, naver_db.buy;

-- CREATE TABLE table (column TYPE constraint);
CREATE TABLE naver_db.member (
	mem_id CHAR(8) NOT NULL PRIMARY KEY,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED
);

-- DESCRIBE table;
DESCRIBE naver_db.member;

-- DROP TABLE IF EXISTS table;
DROP TABLE IF EXISTS naver_db.member;

-- CREATE TABLE table (column TYPE constraint);
CREATE TABLE naver_db.member (
	mem_id CHAR(8) NOT NULL,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED,
    PRIMARY KEY (mem_id)
);

-- DESCRIBE table;
DESCRIBE naver_db.member;

-- DROP TABLE IF EXISTS table;
DROP TABLE IF EXISTS naver_db.member;

-- CREATE TABLE table (column TYPE constraint);
CREATE TABLE naver_db.member (
	mem_id CHAR(8) NOT NULL,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED
);

-- ALTER TABLE table ADD CONSTRAINT PRIMARY KEY (mem_id);
ALTER TABLE naver_db.member ADD CONSTRAINT PRIMARY KEY (mem_id);

-- DESCRIBE table;
DESCRIBE naver_db.member;

-- DROP TABLE IF EXISTS table;
DROP TABLE IF EXISTS naver_db.member;

-- CREATE TABLE table (column TYPE constraint, PRIMARY KEY key_name (column));
CREATE TABLE naver_db.member ( 
	mem_id CHAR(8) NOT NULL,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED,
    PRIMARY KEY key_mem_id (mem_id)
);

-- DESCRIBE table;
DESCRIBE naver_db.member;
