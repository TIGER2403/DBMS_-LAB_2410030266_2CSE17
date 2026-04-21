-- 1. Display all employees with their dept name.
SELECT E.ENAME,D.DNAME FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO;

-- 2. Display those employees whose manager name is JONES and also display their manager name.
SELECT E.ENAME,M.ENAME AS MANAGER FROM employee E JOIN employee M ON E.MGR=M.EMPNO WHERE M.ENAME='JONES';

-- 3. Display employee name, job, dept name, manager name.
SELECT E.ENAME,E.JOB,D.DNAME,IFNULL(M.ENAME,'NO MANAGER') AS MANAGER FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO LEFT JOIN employee M ON E.MGR=M.EMPNO;

-- 4. List employee name, job and department name except clerk, sorted by highest salary.
SELECT E.ENAME,E.JOB,D.DNAME FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO WHERE E.JOB!='CLERK' ORDER BY E.SAL DESC;

-- 5. Display employee name, job and manager (including no manager).
SELECT E.ENAME,E.JOB,IFNULL(M.ENAME,'NO MANAGER') FROM employee E LEFT JOIN employee M ON E.MGR=M.EMPNO;

-- 6. Employees with annual salary = 36000 or not clerks.
SELECT E.ENAME,E.JOB,(E.SAL*12) AS ANNUAL_SAL,E.DEPTNO,D.DNAME FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO WHERE (E.SAL*12)=36000 OR E.JOB!='CLERK';

-- 7. Employees with annual salary = 30000 and not clerks.
SELECT E.ENAME,E.JOB,(E.SAL*12) AS ANNUAL_SAL,E.DEPTNO,D.DNAME FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO WHERE (E.SAL*12)=30000 AND E.JOB!='CLERK';

-- 8. Employees with manager name and number.
SELECT E.ENAME,E.EMPNO,IFNULL(M.ENAME,'NO MANAGER') AS MANAGER_NAME,IFNULL(M.EMPNO,'-') AS MANAGER_NO FROM employee E LEFT JOIN employee M ON E.MGR=M.EMPNO;

-- 9. Dept name, dept no and total salary.
SELECT D.DNAME,D.DEPTNO,SUM(E.SAL) FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO GROUP BY D.DEPTNO,D.DNAME;

-- 10. Employee number, name and department location.
SELECT E.EMPNO,E.ENAME,D.LOC FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO;

-- 11. Employee name and department name.
SELECT E.ENAME,D.DNAME FROM employee E JOIN department D ON E.DEPTNO=D.DEPTNO;