-- Use Databse
-- USE sys;
USE market_db;

-- SELECT select_expr
-- [FROM table-references]
-- [WHERE where_condition]
-- [GROUP BY {col_name | expr | position}]
-- [HAVING where_condition]
-- ORDER BY {col_name | expr | position}]
-- LIMIT {[offset,] row_count | row_count OFFSET offset}]

-- Select From
SELECT * FROM market_db.member LIMIT 100;
