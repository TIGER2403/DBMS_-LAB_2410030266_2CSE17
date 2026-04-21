-- 1. Display the total number of employee working in the company.
SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM employee;

-- 2. Display the total salary being paid to all employees.
SELECT SUM(SAL) AS TOTAL_SALARY FROM employee;

-- 3. Display the maximum salary from employee table.
SELECT MAX(SAL) AS MAX_SALARY FROM employee;

-- 4. Display the minimum salary from employee table.
SELECT MIN(SAL) AS MIN_SALARY FROM employee;

-- 5. Display the average salary from employee table
SELECT AVG(SAL) AS AVG_SALARY FROM employee;

-- 6. Display the maximum salary being paid to clerk.
SELECT MAX(SAL) AS MAX_CLERK_SALARY FROM employee WHERE JOB='CLERK';

-- 7. Display the maximum salary being paid in dept no 20.
SELECT MAX(SAL) AS MAX_SALARY_DEPT20 FROM employee WHERE DEPTNO=20;

-- 8. Display the minimum salary paid to any salesman.
SELECT MIN(SAL) AS MIN_SALESMAN_SALARY FROM employee WHERE JOB='SALESMAN';

-- 9. Display the average salary drawn by managers.
SELECT AVG(SAL) AS AVG_MANAGER_SALARY FROM employee WHERE JOB='MANAGER';

-- 10. Display the total salary drawn by analyst working in dept no 40.
SELECT SUM(SAL) AS TOTAL_ANALYST_SALARY FROM employee WHERE JOB='ANALYST' AND DEPTNO=40;

-- 11. Display the names of the employee in Uppercase.
SELECT UPPER(ENAME) FROM employee;

-- 12. Display the names of the employee in Lowercase.
SELECT LOWER(ENAME) FROM employee;

-- 13. Display the names of the employee in Proper case.
SELECT CONCAT(UPPER(LEFT(ENAME,1)),LOWER(SUBSTRING(ENAME,2))) AS PROPER_NAME FROM employee;

-- 14. Display the length of Your name using appropriate function.
SELECT LENGTH('HIMANSHU') AS NAME_LENGTH;

-- 15. Display the length of all the employee names.
SELECT ENAME,LENGTH(ENAME) AS NAME_LENGTH FROM employee;