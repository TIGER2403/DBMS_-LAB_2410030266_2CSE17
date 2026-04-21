-- 1. Compute the no. of days remaining in this year.
SELECT DATEDIFF(CONCAT(YEAR(CURDATE()),'-12-31'),CURDATE()) AS DAYS_LEFT;

-- 2. Find the highest and lowest salaries and the difference between of them.
SELECT MAX(SAL) AS MAX_SAL,MIN(SAL) AS MIN_SAL,(MAX(SAL)-MIN(SAL)) AS DIFFERENCE FROM employee;

-- 3. List employee whose commission is greater than 25 % of their salaries.
SELECT * FROM employee WHERE COMM>(SAL*0.25);

-- 4. Make a query that displays salary in dollar format.
SELECT ENAME,CONCAT('$',FORMAT(SAL,2)) AS SALARY FROM employee;

-- 5. Create a matrix query to display job, salary based on department and total salary.
SELECT JOB,SUM(CASE WHEN DEPTNO=10 THEN SAL ELSE 0 END) AS DEPT10,SUM(CASE WHEN DEPTNO=20 THEN SAL ELSE 0 END) AS DEPT20,SUM(CASE WHEN DEPTNO=30 THEN SAL ELSE 0 END) AS DEPT30,SUM(CASE WHEN DEPTNO=40 THEN SAL ELSE 0 END) AS DEPT40,SUM(SAL) AS TOTAL FROM employee GROUP BY JOB;

-- 6. Total employees and count hired in 1980,1981,1982,1983.
SELECT COUNT(*) AS TOTAL,SUM(YEAR(HIREDATE)=1980) AS Y1980,SUM(YEAR(HIREDATE)=1981) AS Y1981,SUM(YEAR(HIREDATE)=1982) AS Y1982,SUM(YEAR(HIREDATE)=1983) AS Y1983 FROM employee;

-- 7. Query to get the last Sunday of any month (current month example).
SELECT DATE_SUB(LAST_DAY(CURDATE()),INTERVAL (DAYOFWEEK(LAST_DAY(CURDATE()))-1) DAY) AS LAST_SUNDAY;

-- 8. Display department numbers and total number of employees working in each department.
SELECT DEPTNO,COUNT(*) AS TOTAL_EMP FROM employee GROUP BY DEPTNO;

-- 9. Display the various jobs and total number of employees within each job group.
SELECT JOB,COUNT(*) AS TOTAL_EMP FROM employee GROUP BY JOB;

-- 10. Display the department numbers and total salary for each department.
SELECT DEPTNO,SUM(SAL) AS TOTAL_SAL FROM employee GROUP BY DEPTNO;