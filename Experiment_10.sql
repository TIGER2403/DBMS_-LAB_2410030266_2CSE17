-- 1. Display the names of employees from department number 10 with salary greater than that of any employee working in other departments.
SELECT ENAME FROM employee WHERE DEPTNO=10 AND SAL>ANY(SELECT SAL FROM employee WHERE DEPTNO!=10);

-- 2. Display the names of employee from department number 10 with salary greater than that of all employee working in other departments.
SELECT ENAME FROM employee WHERE DEPTNO=10 AND SAL>ALL(SELECT SAL FROM employee WHERE DEPTNO!=10);

-- 3. Display the details of employees who are in sales dept and grade is 3.
SELECT * FROM employee WHERE DEPTNO=(SELECT DEPTNO FROM department WHERE DNAME='SALES') AND (CASE WHEN SAL<=1000 THEN 1 WHEN SAL<=2000 THEN 2 WHEN SAL<=3000 THEN 3 WHEN SAL<=4000 THEN 4 ELSE 5 END)=3;

-- 4. Display those who are not managers and who are managers anyone.
SELECT ENAME FROM employee WHERE JOB!='MANAGER' AND EMPNO IN (SELECT MGR FROM employee WHERE MGR IS NOT NULL);

-- 5. Display those employees whose manager name is jones.
SELECT ENAME FROM employee WHERE MGR=(SELECT EMPNO FROM employee WHERE ENAME='JONES');

-- 6. Display ename who are working in sales dept.
SELECT ENAME FROM employee WHERE DEPTNO=(SELECT DEPTNO FROM department WHERE DNAME='SALES');

-- 7. Display employee name, deptname, salary and comm. For those sal in between 2000 to 5000 while location is chicago.
SELECT ENAME,DNAME,SAL,COMM FROM employee JOIN department ON employee.DEPTNO=department.DEPTNO WHERE SAL BETWEEN 2000 AND 5000 AND DNAME='SALES';

-- 8. Display those employees whose salary greater than his manager salary.
SELECT employee.ENAME FROM employee JOIN employee AS manager ON employee.MGR=manager.EMPNO WHERE employee.SAL>manager.SAL;

-- 9. Display those employees who are working in the same dept where his manager is working.
SELECT employee.ENAME FROM employee JOIN employee AS manager ON employee.MGR=manager.EMPNO WHERE employee.DEPTNO=manager.DEPTNO;

-- 10. Display grade and employees name for the dept no 10 or 30 but grade is not 4, while joined the company before 31-dec-82.
SELECT ENAME,(CASE WHEN SAL<=1000 THEN 1 WHEN SAL<=2000 THEN 2 WHEN SAL<=3000 THEN 3 WHEN SAL<=4000 THEN 4 ELSE 5 END) AS GRADE FROM employee WHERE DEPTNO IN (10,30) AND HIREDATE<'1982-12-31' HAVING GRADE!=4;