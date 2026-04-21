-- 1. Delete those employees who joined the company before 31-dec-82 while their dept location is ‘new york’ or ‘chicago’.
DELETE FROM employee WHERE HIREDATE<'1982-12-31' AND DEPTNO IN (SELECT DEPTNO FROM department WHERE DNAME IN ('RESEARCH','SALES'));

-- 2. Display employee name, job, deptname, location for all who are working as managers.
SELECT ENAME,JOB,DNAME,'N/A' AS LOCATION FROM employee JOIN department ON employee.DEPTNO=department.DEPTNO WHERE JOB='MANAGER';

-- 3. Display name and salary of ford if his sal is equal to high sal of his grade.
SELECT ENAME,SAL FROM employee WHERE ENAME='FORD' AND SAL=(SELECT MAX(SAL) FROM employee WHERE CASE WHEN SAL<=1000 THEN 1 WHEN SAL<=2000 THEN 2 WHEN SAL<=3000 THEN 3 WHEN SAL<=4000 THEN 4 ELSE 5 END=(CASE WHEN (SELECT SAL FROM employee WHERE ENAME='FORD')<=1000 THEN 1 WHEN (SELECT SAL FROM employee WHERE ENAME='FORD')<=2000 THEN 2 WHEN (SELECT SAL FROM employee WHERE ENAME='FORD')<=3000 THEN 3 WHEN (SELECT SAL FROM employee WHERE ENAME='FORD')<=4000 THEN 4 ELSE 5 END));

-- 4. Find out the top 5 earner of company.
SELECT ENAME,SAL FROM employee ORDER BY SAL DESC LIMIT 5;

-- 5. Display the name of those employees who are getting highest salary.
SELECT ENAME FROM employee WHERE SAL=(SELECT MAX(SAL) FROM employee);

-- 6. Display those employees whose salary is equal to average of maximum and minimum.
SELECT ENAME FROM employee WHERE SAL=((SELECT MAX(SAL)+MIN(SAL) FROM employee)/2);

-- 7. Display dname where at least 3 are working and display only dname
SELECT DNAME FROM department WHERE DEPTNO IN (SELECT DEPTNO FROM employee GROUP BY DEPTNO HAVING COUNT(*)>=3);

-- 8. Display name of those managers names whose salary is more than average salary of company.
SELECT ENAME FROM employee WHERE JOB='MANAGER' AND SAL>(SELECT AVG(SAL) FROM employee);

-- 9. Display those managers name whose salary is more than an average salary of his employees.
SELECT ENAME FROM employee WHERE JOB='MANAGER' AND SAL>(SELECT AVG(SAL) FROM employee WHERE MGR=employee.EMPNO);

-- 10. Display employee name, sal, comm and net pay for those employees whose net pay are greater than or equal to any other employee salary of the company?
SELECT ENAME,SAL,COMM,(SAL+IFNULL(COMM,0)) AS NET_PAY FROM employee WHERE (SAL+IFNULL(COMM,0))>=ALL(SELECT SAL FROM employee);