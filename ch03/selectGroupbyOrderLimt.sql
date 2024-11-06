-- USE databse
USE market_db;

-- ORDER BY
-- SELECT column FROM table ORDER BY column (ASC);
SELECT mem_id, mem_name, debut_date FROM market_db.member ORDER BY debut_date;

-- SELECT column FROM talbe ORDER BY column DESC;
SELECT mem_id, mem_name, debut_date FROM market_db.member ORDER BY debut_date DESC;

-- SELECT column FROM table WHERE column >= condition ORDER BY column DESC;
-- SELECT mem_id, mem_name, debut_date, height FROM market_db.member ORDER BY height DESC WHERE height >= 164; -- syntax error
SELECT mem_id, mem_name, debut_date, height FROM market_db.member WHERE height >= 164 ORDER BY height DESC;

-- SELECT column FROM table WHERE column >= condition ORDER BY column DESC, column ASC;
SELECT mem_id, mem_name, debut_date, height FROM market_db.member WHEre height >= 164 ORDER BY height DESC, debut_date ASC;

-- LIMIT
-- SELECT column FROM table LIMIT count;
SELECT * FROM market_db.member LIMIT 3;

-- SELECT column FROM table ORDER BY column ASC(DESC) LIMIT count;
SELECT mem_name, debut_date FROM market_db.member ORDER BY debut_date DESC LIMIT 3;

-- SELECT column FROM table ORDER BY column ASC(DESC) LIMIT offset, count;
SELECT mem_name, height FROM market_db.member ORDER BY height DESC LIMIT 3, 2;
SELECT mem_name, height FROM market_db.member ORDER BY height DESC LIMIT 2 OFFSET 3;

-- DISTINCT
-- SELECT DISTINCT column FROM table;
SELECT DISTINCT addr FROM market_db.member;

-- GROUP BY
-- func() -- SUM(column), AVG(column), MIN(column), MAX(column), COUNT(column), COUNT(DISTICT column)
-- SELECT column, func(column) FROM table GROUP BY column;
SELECT mem_id, SUM(amount) FROM market_db.buy GROUP BY mem_id;
-- SELECT column alias, func(column) alias FROM table GROUP BY column;
SELECT mem_id '회원 아이디', SUM(amount) '총 구매 수량' FROM market_db.buy GROUP BY mem_id;
SELECT mem_id '회원 아이디', SUM(price*amount) '총 구매 금액' FROM market_db.buy GROUP BY mem_id;
SELECT AVG(amount) "평균 구매 개수" FROM market_db.buy;
SELECT mem_id, AVG(amount) '평균 구매 개수' FROM market_db.buy GROUP BY mem_id;
SELECT COUNT(phone1) '연락처가 있는 회원' FROM market_db.member;

-- HAVING
-- SELECT column FROM table GROUP BY column HAVING func(column) >= condition;
-- SELECT mem_id '회원 아이디', SUM(price*amount) '총 구매 금액' FROM market_db.buy WHERE SUM(price*amount) > 1000 GROUP BY mem_id; -- invalid use of group function
SELECT mem_id '회원 아이디', SUM(price*amount) '총 구매 금액' FROM market_db.buy GROUP BY mem_id HAVING SUM(price * amount) > 1000;
-- SELECT column alias FROM table GROUP BY column HAVING func(column) >= condition ORDER BY func(column) DESC(ASC);
SELECT mem_id '회원 아이디', SUM(price*amount) '총 구매 금액' FROM market_db.buy GROUP BY mem_id HAVING SUM(price * amount) > 1000 ORDER BY SUM(price * amount) DESC;
