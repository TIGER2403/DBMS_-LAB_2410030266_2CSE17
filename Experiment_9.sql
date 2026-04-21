-- 1. Display the name of emp name who earns highest salary.
SELECT ENAME FROM employee WHERE SAL=(SELECT MAX(SAL) FROM employee);

-- 2. Display the employee number and name of employee working as clerk and earning highest salary among clerks.
SELECT EMPNO,ENAME FROM employee WHERE JOB='CLERK' AND SAL=(SELECT MAX(SAL) FROM employee WHERE JOB='CLERK');

-- 3. Display the names of the salesman who earns a salary more than the highest salary of any clerk.
SELECT ENAME FROM employee WHERE JOB='SALESMAN' AND SAL>(SELECT MAX(SAL) FROM employee WHERE JOB='CLERK');

-- 4. Display the names of clerks who earn salary more than that of JAMES and salary lesser than that of SCOTT.
SELECT ENAME FROM employee WHERE JOB='CLERK' AND SAL>(SELECT SAL FROM employee WHERE ENAME='JAMES') AND SAL<(SELECT SAL FROM employee WHERE ENAME='SCOTT');

-- 5. Display the names of employees who earn a sal more than that of JAMES or salary greater than that of SCOTT.
SELECT ENAME FROM employee WHERE SAL>(SELECT SAL FROM employee WHERE ENAME='JAMES') OR SAL>(SELECT SAL FROM employee WHERE ENAME='SCOTT');

-- 6. Display the names of the employees who earn highest salary in their respective departments.
SELECT ENAME FROM employee WHERE SAL IN (SELECT MAX(SAL) FROM employee GROUP BY DEPTNO);

-- 7. Display the names of employees who earn highest salaries in their respective job groups.
SELECT ENAME FROM employee WHERE SAL IN (SELECT MAX(SAL) FROM employee GROUP BY JOB);

-- 8. Display the employee names who are working in accounting dept.
SELECT ENAME FROM employee WHERE DEPTNO=(SELECT DEPTNO FROM department WHERE DNAME='ACCOUNTING');

-- 9. Display the employee names who are working in chicago.
SELECT ENAME FROM employee JOIN department ON employee.DEPTNO=department.DEPTNO WHERE LOC='CHICAGO';

-- 10. Display the job groups having total salary greater than the maximum salary for managers.
SELECT JOB FROM employee GROUP BY JOB HAVING SUM(SAL)>(SELECT MAX(SAL) FROM employee WHERE JOB='MANAGER');