-- CREATE DATABASE database;
CREATE DATABASE ja2pyc_wp;
CREATE DATABASE ja2pyc_jsp;

-- SHOW DATABASES;
SHOW DATABASES;

-- USE database;
USE ja2pyc_wp;
USE ja2pyc_jsp;
USE mysql;

-- SHOW TABLES:
SHOW TABLES;

SELECT User, Host FROM mysql.user;


-- SELECT column FROM table LIMIT count;
SELECT * FROM mysql.user LIMIT 100;

-- CREATE USER id@localhost IDENTIFIED BY 'password';
CREATE USER 'ja2pyc'@'localhost' IDENTIFIED BY '1234';

-- SHOW GRANTS;
SHOW GRANTS;

-- GRANT ALL PRIVILEGES ON database.* TO id@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_wp.* TO ja2pyc@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_jsp.* TO ja2pyc@localhost;

-- GRANT SELECT, INSERT UPDATE ON database.* TO id@localhost;

-- FLUSH PRIVILEGES;
FLUSH PRIVILEGES;

-- SHOW GRANTS FOR id@localhost
SHOW GRANTS FOR ja2pyc@localhost;
SHOW GRANTS FOR 'ja2pyc'@'localhost';

-- Alter Password
ALTER USER 'ja2pyc'@'localhost' IDENTIFIED BY '1120@ja2pyc';
FLUSH PRIVILEGES;


-- REVOKE ALL ON database.table FROM id;
-- REVOKE ALL ON ja2pyc_wp.* FROM ja2pyc;

-- DROP USER id@localhost;