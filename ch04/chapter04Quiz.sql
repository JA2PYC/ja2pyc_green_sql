-- USE database;
USE example;

-- SHOW TABLES;
SHOW TABLES;

-- DESCRIBE table;
DESCRIBE example.dept;
DESCRIBE example.emp;

-- Quiz 1
SELECT ename, table_dept.dname, sal, job
	FROM example.emp AS table_emp 
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno 
    WHERE job = (SELECT job FROM example.emp WHERE ename = 'ALLEN');

-- Quiz 2
SELECT empno, ename, hiredate, sal, deptno 
	FROM example.emp 
    WHERE deptno = (SELECT deptno FROM example.emp WHERE ename = 'JONES');
    
-- Quiz 3
SELECT empno, ename, table_emp.deptno, table_dept.dname, hiredate, table_dept.loc, sal 
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno 
	WHERE sal >= (SELECT AVG(sal) FROM example.emp);

-- Quiz 4
SELECT empno, ename, job, table_emp.deptno, dname, loc, sal 
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno 
    WHERE job IN (SELECT job FROM example.emp WHERE deptno = 10)
    ORDER BY table_emp.sal DESC;
    
-- Quiz 5
SELECT empno, ename, sal 
	FROM example.emp
    WHERE sal IN (SELECT sal FROM example.emp WHERE ename IN ('MARTIN', 'SCOTT'));
    
-- Quiz 6
SELECT empno, ename , sal, deptno
	FROM example.emp
    WHERE sal >= (SELECT MAX(sal) FROM example.emp WHERE deptno = 30);
    
-- Quiz 7
SELECT MAX(sal + IFNULL(comm, 0)) AS 'MAX', MIN(sal + IFNULL(comm, 0)) AS 'MIN', AVG(sal + IFNULL(comm, 0)) AS 'AVG' 
	FROM example.emp;
    
-- Quiz 8 
SELECT deptno, AVG(sal)
	FROM example.emp 
    GROUP BY deptno;
    
-- Quiz 9
SELECT ename, job, sal, 
	CASE 
		WHEN (sal >= 3000) THEN sal * 0.15
        WHEN (sal >= 2000) THEN sal * 0.1 
        WHEN (sal >= 1000) THEN sal * 0.05 
		ELSE 0
	END bonus, comm, sal + 
		(CASE 
			WHEN (sal >= 3000) THEN sal * 0.15
            WHEN (sal >= 2000) THEN sal * 0.1
            WHEN (sal >= 1000) THEN sal * 0.05
            ELSE 0 
		END) + IFNULL(comm, 0) AS total_sal
	FROM example.emp;
    
-- Quiz 10
SELECT ename, job, sal, table_emp.deptno, table_dept.dname, loc, mgr
	 FROM example.emp AS table_emp
     INNER JOIN example.dept AS table_dept
     ON table_emp.deptno = table_dept.deptno 
     WHERE mgr = (SELECT mgr FROM example.emp WHERE ename = 'MARTIN');
    
-- Quiz 11
SELECT DISTINCT ename, job, sal, dname, loc 
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno
    WHERE table_emp.deptno = (SELECT deptno FROM example.dept WHERE dname = 'RESEARCH');
    
-- Quiz 12
SELECT ename, table_dept.dname, loc, sal 
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno
    WHERE sal <= (
		SELECT MIN(avg_sal) 
        FROM (
			SELECT AVG(sal) AS avg_sal 
            FROM example.emp 
            GROUP BY deptno
		) AS dept_avg
	);

-- Quiz 13
SELECT ename, hiredate 
	FROM example.emp
    WHERE deptno = (SELECT deptno FROM example.emp WHERE ename = 'BLAKE') AND ename NOT LIKE 'BLAKE';
    
-- Quiz 14
SELECT empno, ename, deptno 
	FROM example.emp 
    WHERE deptno IN (SELECT deptno FROM example.emp WHERE ename LIKE '%T%');

-- Quiz 15
SELECT empno, ename, sal 
	FROM example.emp 
    WHERE sal >= (SELECT AVG(sal) FROM example.emp) 
		AND deptno IN (SELECT deptno FROM example.emp WHERE ename LIKE '%S%');
        
-- Quiz 16
SELECT ename, deptno, sal, comm, sal + IFNULL(comm, 0) AS total_sal
	FROM example.emp 
    WHERE deptno IN (SELECT deptno FROM example.emp WHERE comm IS NOT NULL AND comm != 0) 
		OR sal IN (SELECT sal FROM example.emp WHERE comm IS NOT NULL AND comm != 0);
        
-- Quiz 17
SELECT ename, job,
	CASE
		WHEN job = 'PRESIDENT' THEN 'A'
        WHEN job = 'ANALYST' THEN 'B'
        WHEN job = 'MANAGER' THEN 'C'
        WHEN job = 'SALESMAN' THEN 'D'
        WHEN job = 'CLERK' THEN 'E'
        ELSE 'F'
    END grade, sal
    FROM example. emp;
    
-- Quiz 18
SELECT empno, ename, job, table_emp.deptno, dname, hiredate, loc
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept
    ON table_emp.deptno = table_dept.deptno
    WHERE table_emp.deptno = 10 
		AND job NOT IN (SELECT job FROM example.emp WHERE deptno = 30);
        
-- Quiz 19
SELECT empno, ename, sal, deptno
	FROM example.emp 
    WHERE sal > (SELECT MAX(sal) FROM example.emp WHERE deptno = 30);
    
-- Quiz 20
SELECT empno, ename, sal, deptno
	FROM example.emp
    WHERE sal < (SELECT MIN(sal) FROM example.emp WHERE deptno =30);
    
-- Quiz 21
SELECT empno, ename, hiredate, table_emp.deptno, dname
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept
    ON table_emp.deptno = table_dept.deptno 
    WHERE hiredate <= (SELECT MIN(hiredate) FROM example.emp);
    
-- Quiz 22
SELECT empno, ename, job, sal * 12 + IFNULL(comm, 0) AS total_sal
	FROM example.emp 
    WHERE sal * 12 + IFNULL(comm, 0) >= (SELECT AVG(sal * 12 + IFNULL(comm, 0)) FROM example.emp)
    ORDER BY sal * 12 + IFNULL(comm, 0) DESC;
    
-- Quiz 23
SELECT table_emp.deptno, dname, ename, sal 
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno;
    
-- Quiz 24
SELECT table_emp.deptno, dname, ename
	FROM example.emp AS table_emp
    INNER JOIN example.dept AS table_dept 
    ON table_emp.deptno = table_dept.deptno
    WHERE ename = 'ALLEN';

-- Quiz 25
SELECT * 
	FROM example.dept AS table_dept
    LEFT OUTER JOIN example.emp AS table_emp 
    ON table_dept.deptno = table_emp.deptno
    WHERE ename IS NULL;
