CREATE DATABASE ja2pyc_spring;

SHOW DATABASES;

USE ja2pyc_spring;

-- SHOW TABLES:
SHOW TABLES;

SELECT User, Host FROM mysql.user;

-- SELECT column FROM table LIMIT count;
SELECT * FROM mysql.user LIMIT 100;

-- CREATE USER id@localhost IDENTIFIED BY 'password';
-- CREATE USER 'ja2pyc'@'localhost' IDENTIFIED BY '1234';

-- SHOW GRANTS;
SHOW GRANTS;

-- GRANT ALL PRIVILEGES ON database.* TO id@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_wp.* TO ja2pyc@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_jsp.* TO ja2pyc@localhost;
GRANT ALL PRIVILEGES ON ja2pyc_spring.* TO ja2pyc@localhost;

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

CREATE TABLE ja2pyc_spring.member (
	memberNum INT UNSIGNED NOT NULL AUTO_INCREMENT,
    memberId VARCHAR(128) NOT NULL,
    memberPw VARCHAR(256) NOT NULL,
    memberName VARCHAR(256) NOT NULL,
    PRIMARY KEY key_memberNum (memberNum),
    UNIQUE KEY key_memberId (memberId)
);

DROP TABLE ja2pyc_spring.member;

CREATE TABLE ja2pyc_spring.board (
	boardId INT UNSIGNED NOT NULL AUTO_INCREMENT,
    boardTitle VARCHAR(128) NOT NULL,
    boardContent VARCHAR(256) NOT NULL,
    PRIMARY KEY key_boardId (boardId)
);

INSERT INTO ja2pyc_spring.member VALUES (NULL, "ja2pyc", "1234", "JA2");

INSERT INTO ja2pyc_spring.board VALUES (NULL, "게시판 제목 1", "게시판 내용 1");
INSERT INTO ja2pyc_spring.board VALUES (NULL, "Title 1", "Content 1");

SELECT * FROM ja2pyc_spring.member WHERE memberId='ja2pyc' AND memberPw='1234';
SELECT * FROM ja2pyc_spring.member;
SELECT * FROM ja2pyc_spring.board;

-- CREATE TABLE ja2pyc_spring.tbl_member (
-- 	tblMemberNum INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     tblMemberId VARCHAR(129) NOT NULL,
--     tblMemberName VARCHAR(128) NOT NULL,
--     PRIMARY KEY key_tblMemberNum (tblMemberNum)
-- );

CREATE TABLE ja2pyc_spring.tbl_board ( 
	tblBoardId INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tblBoardTitle VARCHAR(128) NOT NULL,
    tblBoardContent VARCHAR(2000) NOT NULL,
    tblBoardWriter VARCHAR(128) NOT NULL,
    tblRegDate DATE DEFAULT (CURRENT_DATE()),
    tblUpdateDate DATE DEFAULT (CURRENT_DATE()),
    PRIMARY KEY key_tblBoardId (tblBoardId)
--     FOREIGN KEY key_tblBoardWriter (tblBoardWriter) REFERENCES ja2pyc_spring.tbl_member (tblMemberId)
);

DROP TABLE ja2pyc_spring.tbl_board;

INSERT INTO ja2pyc_spring.tbl_board (tblBoardId, tblBoardTitle, tblBoardContent, tblBoardWriter) VALUES 
	(NULL, "글 제목 1", "글 내용 1", "글 작성자 1"),
    (NULL, "글 제목 2", "글 내용 2", "글 작성자 2"),
    (NULL, "글 제목 3", "글 내용 3", "글 작성자 3"),
    (NULL, "글 제목 4", "글 내용 4", "글 작성자 4");

INSERT INTO ja2pyc_spring.tbl_board (tblBoardId, tblBoardTitle, tblBoardContent, tblBoardWriter) VALUES (NULL, "글 제목 5", "글 내용 5", "글 작성자 5");

SELECT * FROM ja2pyc_spring.tbl_board;
USE ja2pyc_spring;
SELECT * FROM tbl_board LIMIT 100;

UPDATE tbl_board SET tblBoardTitle="수정 제목 1", tblBoardContent="수정 내용 1", tblBoardWriter="수정 작성자 1" WHERE tblBoardId=7;
