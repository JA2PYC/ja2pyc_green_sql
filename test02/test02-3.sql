CREATE DATABASE mynewdb;

SHOW DATABASES;

USE mynewdb;

-- 테이블 생성
CREATE TABLE employee (
	empno INT,
    ename CHAR(10),
    job CHAR(20),
    mgr INT,
    hiredate DATE,
    sal INT,
    comm INT,
    deptno INT 
    );
    
DESCRIBE employee;

INSERT INTO employee VALUES 
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

-- 급여 1500 이상, 부서번호 30, 직업 Manager
SELECT * FROM employee WHERE sal >= 1500 AND deptno = 30 AND job = "MANAGER";

-- 부서별 합계 순위
SELECT deptno, SUM(sal) AS totalSalary FROM employee GROUP BY deptno HAVING totalSalary >= 2500 ORDER BY totalSalary DESC;

-- 개인별 합계 순위
SELECT *, sal + IFNULL(comm, 0) AS "totalSal" FROM employee WHERE sal+IFNULL(comm,0) >= 2500 ORDER BY deptno ASC, totalSal DESC;