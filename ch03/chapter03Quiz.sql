-- CREATE DATABASE databse;
CREATE DATABASE example;

-- SHOW DATABASES;
SHOW DATABASES;

-- USE database;
USE example;

-- CREATE TABLE table (column TYPE constraints);
CREATE TABLE example.dept (
	deptno INT,
    dname CHAR(15),
    loc CHAR(20)
    );

-- DESCRIBE table;
DESCRIBE example.dept;

-- INSERT INTO table VALUES (value, value);
INSERT INTO example.dept VALUES 
	(10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON'),
    (50, 'DEVELOPER', 'KOREA');

-- SELECT column FROM table LIMIT 100;
SELECT * FROM example.dept LIMIT 100;

-- CREATE TABLE table (column TYPE constraints);
CREATE TABLE example.emp (
	empno INT,
    ename CHAR(10),
    job CHAR(20),
    mgr INT,
    hiredate DATE,
    sal INT,
    comm INT,
    deptno INT 
    );
    
-- DESCRIBE table
DESCRIBE example.emp;

-- INSERT INTO table VALUES (value, value);
INSERT INTO example.emp VALUES 
	(7369, 'SMITH', 'CLERK',  7902, 19801217, 800, NULL, 20),
    (7499, 'ALLEN', 'SALESMAN',  7698, 19810220, 1600, 300, 30),
    (7521, 'WARD', 'SALESMAN',  7698, 19810222, 1250, 500, 30),
    (7566, 'JONES', 'MANAGER',  7839, 19810402, 2975, NULL, 20),
    (7654, 'MARTIN', 'SALESMAN',  7698, 19810928, 1250, 1400, 30),
    (7698, 'BLAKE', 'MANAGER',  7839, 19810501, 2850, NULL, 30),
    (7782, 'CLARK', 'MANAGER',  7839, 19810609, 2450, NULL, 10),
    (7788, 'SCOTT', 'ANALYST',  7566, 19821209, 3000, NULL, 20),
    (7839, 'KING', 'PRESIDENT',  NULL, 19811117, 5000, NULL, 10),
    (7844, 'TURNER', 'SALESMAN',  7698, 19810908, 1500, 0, 30),
    (7876, 'ADAMS', 'CLERK',  7788, 19830112, 1100, NULL, 20),
    (7900, 'JAMES', 'CLERK',  7698, 19811203, 950, NULL, 30),
    (7902, 'FORD', 'ANALYST',  7566, 19811203, 3000, NULL, 20),
    (7934, 'MILLER', 'CLERK',  7782, 19820123, 1300, NULL, 10);

-- SELECT column FROM table LIMIT count;    
SELECT * FROM example.emp LIMIT 100;

-- Quiz 1
SELECT empno, ename, sal FROM example.emp WHERE deptno = 10;

-- Quiz 2
SELECT ename, hiredate, deptno FROM example.emp WHERE empno = 7369;

-- Quiz 3
SELECT * FROM example.emp WHERE ename = 'ALLEN';

-- Quiz 4
SELECT ename, deptno, sal FROM example.emp WHERE hiredate = '1983-01-12';

-- Quiz 5
SELECT * FROM example.emp WHERE job != 'MANAGER';

-- Quiz 6
SELECT * FROM example.emp WHERE ename >= 'K%';

-- Quiz 7
SELECT ename, sal, deptno FROM example.emp WHERE hiredate BETWEEN 19810402 AND 19821209;

-- Quiz 8
SELECT * FROM example.emp WHERE ename LIKE '%s%';

-- Quiz 9
SELECT * FROM example.emp WHERE ename LIKE 'S___T';