-- USE databse
-- USE sys;
USE market_db;

-- SELECT select_expr
-- [FROM table-references]
-- [WHERE where_condition]
-- [GROUP BY {col_name | expr | position}]
-- [HAVING where_condition]
-- ORDER BY {col_name | expr | position}]
-- LIMIT {[offset,] row_count | row_count OFFSET offset}]

-- SELECT * FROM table;
SELECT * FROM market_db.member;

-- SELECT column FROM table;
SELECT mem_name FROM market_db.member;

-- SELECT column, column FROM table;
SELECT addr, debut_date, mem_name FROM market_db.member;

-- SELECT column alias, column alias FROM table;
SELECT addr 주소, debut_date "데뷔 일자", mem_name FROM market_db.member;

-- SELECT * FROM table WHERE column = condition;
SELECT * FROM market_db.member 
	WHERE mem_name = '블랙핑크';
SELECT * FROM market_db.member 
	WHERE mem_number = 4;

-- SELECT * FROM table WHERE column >= condition;
SELECT * FROM market_db.member 
	WHERE height <= 162;

-- SELECT * FROM table WHERE column >= condition AND column > condition;
SELECT * FROM market_db.member 
	WHERE height >= 165 AND mem_number > 6;

-- SELECT * FROM table WHERE column >= condition OR column > condition;
SELECT * FROM market_db.member 
	WHERE height >= 165 OR mem_number > 6;

-- SELECT * FROM table WHERE column(date) > condition('string date');
SELECT * FROM market_db.member WHERE debut_date > '2016-01-01';

-- SELECT * FROM table WHERE column BETWEEN condition AND condition;
SELECT * FROM market_db.member 
	WHERE height >= 163 AND height <= 165;
SELECT * FROM market_db.member 
	WHERE heigth BETWEEN 163 AND 165;
    
-- SELECT * FROM table WHERE column IN (condition, condition);
SELECT mem_name, addr FROM market_db.member 
	WHERE addr = '경기' OR addr = '전남' OR addr = '경남';
SELECT mem_name, addr FROM market_db.member 
	WHERE addr IN('경기', '전남', '경남');
    
-- SELECT * FROM table WHERE column LIKE condition('%'); -- symbol % zero or more character
SELECT * FROM market_db.member WHERE mem_name LIKE '우%';

-- SELECT * FROM table WHERE column LIKE condition('_'); -- symbol _ single character
SELECT * FROM market_db.member WHERE mem_name LIKE '__핑크';

-- SELECT subquery
SELECT height FROM market_db.member WHERE mem_name = '에이핑크';
SELECT mem_name, height FROM market_db.member WHERE height > 164;
SELECT mem_name, height FROM market_db.member 
	WHERE height > (SELECT height FROM market_db.member WHERE mem_name = '에이핑크');