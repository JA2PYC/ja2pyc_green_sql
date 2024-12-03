USE ja2pyc_jsp;

CREATE TABLE ja2pyc_jsp.study_member (
	memberId VARCHAR(32) NOT NULL,
    memberPw VARCHAR(32) NOT NULL,
    memberName VARCHAR(24) NOT NULL,
    memberGender VARCHAR(12),
    memberHome VARCHAR(12),
    memberPhone VARCHAR(12),
    memberEmail VARCHAR(64),
    PRIMARY KEY key_memberId (memberId)
);


CREATE TABLE ja2pyc_jsp.study_post (
	postNum INT UNSIGNED NOT NULL AUTO_INCREMENT,
    postTitle VARCHAR(64) NOT NULL,
    postContent VARCHAR(1000) NOT NULL,
    postWriter VARCHAR(32) NOT NULL,
    postDate DATE NOT NULL DEFAULT (CURRENT_DATE()),
    postViewCount INT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY key_postNum (postNum),
    FOREIGN KEY key_postWriter (postWriter) REFERENCES ja2pyc_jsp.study_member (memberId)
);

DESCRIBE ja2pyc_jsp.study_member;
DESCRIBE ja2pyc_jsp.study_post;

DROP TABLE ja2pyc_jsp.study_member;
DROP TABLE ja2pyc_jsp.study_post;

SELECT * FROM ja2pyc_jsp.study_member LIMIT 100;
SELECT * FROM ja2pyc_jsp.study_post LIMIT 100;