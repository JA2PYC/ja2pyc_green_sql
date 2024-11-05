-- Create Database
CREATE DATABASE ja2pyc;

-- Show Databases
SHOW DATABASES;

-- Use Database
USE ja2pyc;

-- Create Table
CREATE TABLE ja_meta (
	ja_meta_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ja_meta_key VARCHAR(191) NOT NULL,
    ja_meta_value VARCHAR(255) NOT NULL,
    ja_meta_etc TEXT,
    ja_created_time DATETIME NOT NULL,
    ja_modified_time DATETIME NOT NULL,
    PRIMARY KEY key_ja_meta_id (ja_meta_id),
    UNIQUE KEY key_ja_meta_key (ja_meta_key),
    INDEX idx_ja_meta_key (ja_meta_key),
    INDEX idx_ja_meta_value (ja_meta_value),
    INDEX idx_ja_created_time (ja_created_time)
);