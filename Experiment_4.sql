-- 1. Display the list of employees who have joined the company before 30th June 80 or after 31st Dec 81.
SELECT * FROM employee WHERE HIREDATE<'1980-06-30' OR HIREDATE>'1981-12-31';

-- 2. Display the names of employees whose names have second alphabet A in their names.
SELECT ENAME FROM employee WHERE ENAME LIKE '_A%';

-- 3. Display the names of employees whose name is exactly five characters in length
SELECT ENAME FROM employee WHERE LENGTH(ENAME)=5;

-- 4. Display the names of employees whose names have second alphabet A in their names.
SELECT ENAME FROM employee WHERE ENAME LIKE '_A%';

-- 5. Display the names of employees who are not working as salesman or clerk or analyst.
SELECT ENAME FROM employee WHERE JOB NOT IN ('SALESMAN','CLERK','ANALYST');

-- 6. Display the name of the employee along with their annual salary (sal*12). The name of the employee earning highest salary should appear first.
SELECT ENAME,(SAL*12) AS ANNUAL_SALARY FROM employee ORDER BY SAL DESC;

-- 7. Display name, sal, hra, pf, da, totalsal for each employee.
SELECT ENAME,SAL,(SAL*0.15) AS HRA,(SAL*0.05) AS PF,(SAL*0.10) AS DA,((SAL+(SAL*0.15)+(SAL*0.10))-(SAL*0.05)) AS TOTALSAL FROM employee ORDER BY TOTALSAL;

-- 8. Update the salary of each employee by 10% increment who are not eligible for commission.
UPDATE employee SET SAL=SAL*1.10 WHERE COMM IS NULL;

-- 9. Display those employees whose salary is more than 3000 after giving 20% increment.
SELECT * FROM employee WHERE (SAL*1.20)>3000;

-- 10. Display those employees whose salary contains atleast 3 digits
SELECT * FROM employee WHERE SAL>=100;