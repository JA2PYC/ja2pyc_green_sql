CREATE DATABASE ja2pyc_jsp;

USE ja2pyc_jsp;

CREATE TABLE ja2pyc_jsp.member( 
	id VARCHAR(10) NOT NULL,
    pass VARCHAR(10) NOT NULL,
    name VARCHAR(30) NOT NULL,
    regidate DATE NOT NULL DEFAULT (CURRENT_DATE()),
    PRIMARY KEY key_id (id)
);

CREATE TABLE ja2pyc_jsp.board (
	num INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(200),
    content VARCHAR(2000) NOT NULL,
    id VARCHAR(10),
    postdate DATETIME NOT NULL DEFAULT NOW(),
    visitcount INT NULL,
    PRIMARY KEY key_num (num),
    FOREIGN KEY key_id (id) REFERENCES ja2pyc_jsp.member (id)
);

DESCRIBE ja2pyc_jsp.member;
DESCRIBE ja2pyc_jsp.board;

SELECT * FROM ja2pyc_jsp.member LIMIT 100;
SELECT * FROM ja2pyc_jsp.board LIMIT 100;

SELECT * FROM ja2pyc_jsp.member WHERE id='test1' AND pass='1234';

INSERT INTO ja2pyc_jsp.member VALUES ('ja2pyc', '1234', 'JA2', CURRENT_DATE());

INSERT INTO board VALUES (NULL, '지금은 봄 입니다', '봄의 왈츠', 'ja2pyc', NOW(), NULL);
INSERT INTO board VALUES (NULL, '지금은 여름 입니다', '여름향기', 'ja2pyc', NOW(), NULL);
INSERT INTO board VALUES (NULL, '지금은 가을 입니다', '가을동화', 'ja2pyc', NOW(), NULL);
INSERT INTO board VALUES (NULL, '지금은 겨울 입니다', '겨울연가', 'ja2pyc', NOW(), NULL);

SELECT * FROM board WHERE visitcount IS NULL;
UPDATE board SET visitcount=0 WHERE (visitcount IS NULL) LIMIT 10;

INSERT INTO board VALUES 
	(NULL, '지금은 봄 입니다', '봄의 왈츠', 'ja2pyc', NOW(), NULL),
    (NULL, '지금은 여름 입니다', '여름향기', 'ja2pyc', NOW(), NULL),
    (NULL, '지금은 가을 입니다', '가을동화', 'ja2pyc', NOW(), NULL),
    (NULL, '지금은 겨울 입니다', '겨울연가', 'ja2pyc', NOW(), NULL);

DELETE FROM ja2pyc_jsp.board WHERE num=9;

-- LIMIT OFFSET
SELECT * FROM board LIMIT 10;
SELECT * FROM board ORDER BY num DESC LIMIT 10;

-- USE ROWNUM
SELECT * FROM (SELECT @rownum:=@rownum+1 rownum, b.* FROM board b,(SELECT @rownum:=0) rowT) boardrowT WHERE rownum BETWEEN 20 AND 25;

SELECT * FROM (SELECT @rownum:=@rownum+1 rownum, b.title board_title, b.* FROM board b,(SELECT @rownum:=0) rowT) boardrowT WHERE rownum BETWEEN 20 AND 25;

SELECT * FROM (SELECT @ROWNUM:=@ROWNUM+1 rownum, b.* FROM board b, (SELECT @ROWNUM:=0) rowT ORDER BY num DESC) boardT;
SELECT * FROM (SELECT @ROWNUM:=@ROWNUM+1 rownum, b.* FROM board b, (SELECT @ROWNUM:=0) rowT) boardT ORDER BY rownum DESC;

SELECT * FROM (SELECT @ROWNUM:=@ROWNUM+1 rownum, b.* FROM board b, (SELECT @ROWNUM:=0 rowbase) rowT ORDER BY rownum ASC) boardT;

SELECT @ROWNUM:=0 rowbase;

SELECT * FROM (SELECT @ROWNUM:=@ROWNUM+1 rownum, b.* FROM board b, (SELECT @ROWNUM:=0) rowT ORDER BY num DESC) boardT;
SELECT * FROM (SELECT @ROWNUM:=@ROWNUM+1 rownum, b.* FROM board b, (SELECT @ROWNUM:=0) rowT ORDER BY num ASC) boardT ORDER BY boardT.rownum DESC;
