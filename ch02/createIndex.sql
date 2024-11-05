USE shop_db;

DESCRIBE shop_db.member;

SELECT * FROM shop_db.member LIMIT 100;
SELECT * FROM shop_db.member WHERE mem_name = '아이유';

-- Create Index
CREATE INDEX idx_mem_name ON shop_db.member (mem_name);

SHOW INDEX FROM shop_db.member;