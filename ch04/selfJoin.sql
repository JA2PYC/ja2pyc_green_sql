-- SELF JOIN

-- USE database;
USE market_db;

-- CREATE TABLE table (column TYPE);
CREATE TABLE market_db.emp_table (
	emp CHAR(4),
    manager CHAR(4),
    phone VARCHAR(8)
    );
    
-- INSERT INTO table VALUES (value, value);
INSERT INTO market_db.emp_table VALUES 
	('대표', NULL, '0000'),
    ('영업이사', '대표', '1111'),
    ('관리이사', '대표', '2222'),
    ('정보이사', '대표', '3333'),
    ('영업과장', '영업이사', '1111-1'),
    ('경리부장', '관리이사', '2222-1'),
    ('인사부장', '관리이사', '2222-2'),
    ('개발팀장', '정보이사', '3333-1'),
    ('개발주임', '정보이사', '3333-2');

-- SELECT column FROM table;
SELECT * FROM market_db.emp_table;

-- SELECT column FROM table alias INNER JOIN table alias ON clumn(condition) = column(condition);
SELECT * FROM market_db.emp_table table_emp INNER JOIN market_db.emp_table table_mgr ON table_emp.manager = table_mgr.emp;
SELECT table_emp.emp '직원', table_mgr.emp '직속상관', table_mgr.phone '상관 연락처' 
	FROM market_db.emp_table table_emp 
    INNER JOIN market_db.emp_table table_mgr
    ON table_emp.manager = table_mgr.emp;