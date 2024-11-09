-- CREATE DATABASE database;
CREATE DATABASE ja2pyc_wp;

-- SHOW DATABASES;
SHOW DATABASES;

-- USE database;
USE ja2pyc_wp;
USE mysql;

-- SHOW TABLES:
SHOW TABLES;

-- SELECT column FROM table LIMIT count;
SELECT * FROM mysql.user LIMIT 100;

-- CREATE USER id@localhost IDENTIFIED BY 'password';
-- CREATE USER ja2pyc@localhost IDENTIFIED BY '';

-- SHOW GRANTS;
SHOW GRANTS;

-- GRANT ALL PRIVILEGES ON database.* TO id@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_wp.* TO ja2pyc@localhost;

-- GRANT SELECT, INSERT UPDATE ON database.* TO id@localhost;

-- FLUSH PRIVILEGES;
FLUSH PRIVILEGES;

-- SHOW GRANTS FOR id@localhost
SHOW GRANTS FOR ja2pyc@localhost;

-- REVOKE ALL ON database.table FROM id;
-- REVOKE ALL ON ja2pyc_wp.* FROM ja2pyc;

-- DROP USER id@localhost;