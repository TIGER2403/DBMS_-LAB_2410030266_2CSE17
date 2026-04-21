-- 1. Display empno, ename, deptno with department name (CASE used instead of DECODE)
SELECT EMPNO,ENAME,CASE DEPTNO WHEN 10 THEN 'RESEARCH' WHEN 20 THEN 'ACCOUNTING' WHEN 30 THEN 'SALES' WHEN 40 THEN 'OPERATIONS' END AS DNAME FROM employee;

-- 2. Display your age in days.
SELECT DATEDIFF(CURDATE(),'2003-01-01') AS AGE_IN_DAYS;

-- 3. Display your age in months.
SELECT TIMESTAMPDIFF(MONTH,'2003-01-01',CURDATE()) AS AGE_IN_MONTHS;

-- 4. Display the current date in formatted style
SELECT DATE_FORMAT(CURDATE(),'%D %M %W %Y');

-- 5. Display the following output for each row from employee table.
SELECT CONCAT(ENAME,' has joined on ',DATE_FORMAT(HIREDATE,'%W %D %M %Y')) FROM employee;

-- 6. Scott has joined the company on Wednesday 13th August Nineteen Ninety
SELECT CONCAT(ENAME,' has joined the company on ',DATE_FORMAT(HIREDATE,'%W %D %M %Y')) FROM employee WHERE ENAME='SCOTT';

-- 7. Find the date for nearest Saturday after current date.
SELECT DATE_ADD(CURDATE(),INTERVAL (7-DAYOFWEEK(CURDATE())) DAY);

-- 8. Display current time.
SELECT CURTIME();

-- 9. Display the date three months before the current date
SELECT DATE_SUB(CURDATE(),INTERVAL 3 MONTH);

-- 10. Display those employees who joined in the month of Dec.
SELECT * FROM employee WHERE MONTH(HIREDATE)=12;

-- 11. Display those employees whose first 2 characters from hire date = last 2 characters of salary.
SELECT * FROM employee WHERE LEFT(HIREDATE,2)=RIGHT(SAL,2);

-- 12. Display those employees whose 10% of salary is equal to the year of joining.
SELECT * FROM employee WHERE (SAL*0.10)=YEAR(HIREDATE);

-- 13. Display those employees who joined the company before 15 of the month.
SELECT * FROM employee WHERE DAY(HIREDATE)<15;

-- 14. Display those employees who has joined before 15th of the month
SELECT * FROM employee WHERE DAY(HIREDATE)<15;

-- 15. Display those employees whose joining DATE is available in deptno
SELECT * FROM employee WHERE DAY(HIREDATE)=DEPTNO;