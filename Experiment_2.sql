SHOW TABLES;
SELECT * FROM employee;

-- 1. List all distinct job in Employee.
SELECT DISTINCT JOB FROM employee;

-- 2. List all information about employee in Department Number 30.
SELECT * FROM employee WHERE DEPTNO=30;
 
-- 3.Find all department number with department names greater than 20.
SELECT DEPTNO, DNAME FROM department WHERE DEPTNO>20;

-- 4.Find all information about all the managers as well as the clerks in department 30.
SELECT * FROM employee WHERE DEPTNO=30 AND JOB IN ('MANAGER','CLERK');

-- 5.List the Employee name, Employee numbers and department of all clerks.
SELECT empno, ename, deptno FROM employee WHERE JOB='CLERK';

-- 6.Find all managers not in department 30.
SELECT * FROM employee WHERE JOB='MANAGER' AND DEPTNO<>30;

-- 7.Find Employees and jobs earning between 1200 and 1400.
SELECT ename, deptno, sal FROM employee WHERE SAL BETWEEN 1200 AND 1400;

-- 8.List Name and Department Number of employee who are clerks, analyst or salesman.
SELECT ename, deptno FROM employee WHERE JOB IN ('CLERK','ANALYST','SALAESMAN');

-- 9.List Name and Department Number of employee whose names began with M.
SELECT ename, deptno FROM employee WHERE ENAME LIKE 'M%';

-- 10.List information about all Employees in department 10 who are not manager or clerks.
SELECT * FROM employee WHERE DEPTNO = 10 AND JOB NOT IN ('MANAGER', 'CLERK');