-- Create View

USE shop_db;

CREATE VIEW shop_db.member_view AS SELECT * FROM shop_db.member;

SHOW TABLES;

DESCRIBE shop_db.member_view;

DROP VIEW shop_db.member_view;