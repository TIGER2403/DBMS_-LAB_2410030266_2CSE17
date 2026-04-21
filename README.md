# DBMS_LAB_2410030266_2CSE17

```sql
CREATE DATABASE himanshu_2cse17;
```
## Employee Table Structure:
```sql
CREATE TABLE employee(
EMPNO INT(4) PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
JOB VARCHAR(20),
MGR INT(4),
HIREDATE DATE,
SAL DECIMAL(10,0),
COMM DECIMAL(7,0),
DEPTNO INT(2),
FOREIGN KEY (DEPTNO) REFERENCES department(DEPTNO)
);

DESC employee;
```

```sql
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| EMPNO    | int(4)        | NO   | PRI | NULL    |       |
| ENAME    | varchar(20)   | NO   |     | NULL    |       |
| JOB      | varchar(20)   | YES  |     | NULL    |       |
| MGR      | int(4)        | YES  |     | NULL    |       |
| HIREDATE | date          | YES  |     | NULL    |       |
| SAL      | decimal(10,0) | YES  |     | NULL    |       |
| COMM     | decimal(7,0)  | YES  |     | NULL    |       |
| DEPTNO   | int(2)        | YES  | MUL | NULL    |       |
+----------+---------------+------+-----+---------+-------+
```

---

## Department Table Structure:
```sql
CREATE TABLE department(
DEPTNO INT(2) PRIMARY KEY,
DNAME VARCHAR(15) NOT NULL);
```
```sql
DESC department;
````
```sql
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| DEPTNO | int(2)      | NO   | PRI | NULL    |       |
| DNAME  | varchar(15) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
```
### Elements Of Department Table:
```sql
   USE himanshu_2cse17;
```
```sql
INSERT INTO department (DEPTNO, DNAME) VALUES
(10, 'RESEARCH'),
(20, 'ACCOUNTING'),
(30,'SALES'),
(40,'OPERATIONS');

SELECT * FROM department;
```
```sql
+--------+-------------+
| DEPTNO | DNAME       |
+--------+-------------+
| 10     | RESEARCH    |
| 20     | ACCOUNTING  |
| 30     | SALES       |
| 40     | OPERATIONS  |
+--------+-------------+
```
### Elements Of Employee Table;
```sql
INSERT INTO employee VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO employee (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,300,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,20),
(7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,40),
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,20),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
(7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

SELECT * FROM employee;
```
```sql
+-------+--------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+-----------+------+------------+------+-------+--------+
| 7369  | SMITH  | CLERK     | 7902 | 1980-12-17 | 800  | NULL  | 20     |
| 7499  | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 | 300   | 30     |
| 7521  | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 | 300   | 30     |
| 7566  | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL  | 20     |
| 7654  | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400  | 30     |
| 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL  | 30     |
| 7782  | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL  | 10     |
| 7788  | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL  | 40     |
| 7839  | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL  | 10     |
| 7844  | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 | 0     | 30     |
| 7876  | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL  | 20     |
| 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 | 950  | NULL  | 30     |
| 7902  | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL  | 20     |
| 7934  | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL  | 10     |
+-------+--------+-----------+------+------------+------+-------+--------+
```

---

### 1. Create Employee_master table with data using Employee table.
```sql
CREATE TABLE employee_master AS SELECT * FROM employee;
SHOW TABLES;
SELECT * FROM employee_master;
```
### 📊 Output
```sql
+---------------------------+
| Tables_in_himanshu_2cse17 |
+---------------------------+
| department                |
| employee                  |
| employee_master           |
+---------------------------+

+-------+--------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+-----------+------+------------+------+-------+--------+
| 7369  | SMITH  | CLERK     | 7902 | 1980-12-17 | 800  | NULL  | 20     |
| 7499  | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 | 300   | 30     |
| 7521  | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 | 300   | 30     |
| 7566  | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL  | 20     |
| 7654  | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400  | 30     |
| 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL  | 30     |
| 7782  | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL  | 10     |
| 7788  | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL  | 40     |
| 7839  | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL  | 10     |
| 7844  | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 | 0     | 30     |
| 7876  | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL  | 20     |
| 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 | 950  | NULL  | 30     |
| 7902  | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL  | 20     |
| 7934  | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL  | 10     |
+-------+--------+-----------+------+------------+------+-------+--------+
```

---

### 2. Delete all record into Employee_master whose DeptNo is 10
```sql
DELETE FROM employee_master WHERE DEPTNO = 10;
SELECT * FROM employee_master;
```
### 📊 Output
```sql
+-------+--------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+-----------+------+------------+------+-------+--------+
| 7369  | SMITH  | CLERK     | 7902 | 1980-12-17 | 800  | NULL  | 20     |
| 7499  | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 | 300   | 30     |
| 7521  | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 | 300   | 30     |
| 7566  | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL  | 20     |
| 7654  | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400  | 30     |
| 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL  | 30     |
| 7788  | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL  | 40     |
| 7844  | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 | 0     | 30     |
| 7876  | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL  | 20     |
| 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 | 950  | NULL  | 30     |
| 7902  | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL  | 20     |
+-------+--------+-----------+------+------------+------+-------+--------+
```

---

### 3. Update 10% in salary of DEPTNO 20 into Employee_Master
```sql
UPDATE employee_master 
SET SAL = SAL + (SAL * 0.10) 
WHERE DEPTNO = 20;
SELECT EMPNO, ENAME, SAL, DEPTNO FROM employee_master;
```
### 📊 Output
```sql
+-------+--------+--------+--------+
| EMPNO | ENAME  | SAL    | DEPTNO |
+-------+--------+--------+--------+
| 7369  | SMITH  | 880.00 | 20     |
| 7499  | ALLEN  | 1600.00| 30     |
| 7521  | WARD   | 1250.00| 30     |
| 7566  | JONES  | 3272.50| 20     |
| 7654  | MARTIN | 1250.00| 30     |
| 7698  | BLAKE  | 2850.00| 30     |
| 7788  | SCOTT  | 3000.00| 40     |
| 7844  | TURNER | 1500.00| 30     |
| 7876  | ADAMS  | 1210.00| 20     |
| 7900  | JAMES  | 950.00 | 30     |
| 7902  | FORD   | 3300.00| 20     |
+-------+--------+--------+--------+
```

---

### 4. Alter SAL with size 10,2 in Employee_Master
```sql
ALTER TABLE employee_master MODIFY SAL DECIMAL(10,2);
DESC employee_master;
```
### 📊 Output
```sql
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| EMPNO    | int(4)        | NO   | PRI | NULL    |       |
| ENAME    | varchar(20)   | NO   |     | NULL    |       |
| JOB      | varchar(20)   | YES  |     | NULL    |       |
| MGR      | int(4)        | YES  |     | NULL    |       |
| HIREDATE | date          | YES  |     | NULL    |       |
| SAL      | decimal(10,2) | YES  |     | NULL    |       |
| COMM     | decimal(7,0)  | YES  |     | NULL    |       |
| DEPTNO   | int(2)        | YES  | MUL | NULL    |       |
+----------+---------------+------+-----+---------+-------+
```

---

### 5. Drop Employee_master Table
```sql
DROP TABLE employee_master;
SHOW TABLES;
```
### 📊 Output
```sql
+---------------------------+
| Tables_in_himanshu_2cse17 |
+---------------------------+
| department                |
| employee                  |
+---------------------------+
```

---

### 6. List all distinct job in Employee.
```sql
SELECT DISTINCT JOB FROM employee;
```
### 📊 Output
```sql
+-----------+
| JOB       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
```

---

### 7. List all information about employee in Department Number 30.
```sql
SELECT * FROM employee WHERE DEPTNO = 30;
```
### 📊 Output
```sql
+-------+--------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+-----------+------+------------+------+-------+--------+
| 7499  | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 | 300   | 30     |
| 7521  | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 | 300   | 30     |
| 7654  | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400  | 30     |
| 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL  | 30     |
| 7844  | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 | 0     | 30     |
| 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 | 950  | NULL  | 30     |
+-------+--------+-----------+------+------------+------+-------+--------+
```

---

### 8. Find all department number with department names greater than 20.
```sql
SELECT * FROM department WHERE DEPTNO > 20;
```
### 📊 Output
```sql
+--------+-------------+
| DEPTNO | DNAME       |
+--------+-------------+
| 30     | SALES       |
| 40     | OPERATIONS  |
+--------+-------------+
```

---

### 9. Find all information about all the managers as well as the clerks in department 30.
```sql
SELECT * FROM employee 
WHERE DEPTNO = 30 AND (JOB = 'MANAGER' OR JOB = 'CLERK');
```

### 📊 Output
```sql
+-------+--------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+-----------+------+------------+------+-------+--------+
| 7698  | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL  | 30     |
| 7900  | JAMES  | CLERK     | 7698 | 1981-12-03 | 950  | NULL  | 30     |
+-------+--------+-----------+------+------------+------+-------+--------+
```

---

### 10. List the Employee name, Employee numbers and department of all clerks.
```sql
SELECT ENAME, EMPNO, DEPTNO FROM employee WHERE JOB = 'CLERK';
```

### 📊 Output
```sql
+--------+-------+--------+
| ENAME  | EMPNO | DEPTNO |
+--------+-------+--------+
| SMITH  | 7369  | 20     |
| ADAMS  | 7876  | 20     |
| JAMES  | 7900  | 30     |
| MILLER | 7934  | 10     |
+--------+-------+--------+
```

---

### 11. Find all managers not in department 30.
```sql
SELECT * FROM employee WHERE JOB = 'MANAGER' AND DEPTNO != 30;
```

### 📊 Output
```sql
+-------+--------+---------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+--------+---------+------+------------+------+-------+--------+
| 7566  | JONES  | MANAGER | 7839 | 1981-04-02 | 2975 | NULL  | 20     |
| 7782  | CLARK  | MANAGER | 7839 | 1981-06-09 | 2450 | NULL  | 10     |
+-------+--------+---------+------+------------+------+-------+--------+
```

---

### 12. List information about all Employees in department 10 who are not manager or clerks.
```sql
SELECT * FROM employee 
WHERE DEPTNO = 10 AND JOB NOT IN ('MANAGER','CLERK');
```

### 📊 Output
```sql
+-------+-------+-----------+------+------------+------+-------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM  | DEPTNO |
+-------+-------+-----------+------+------------+------+-------+--------+
| 7839  | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL  | 10     |
+-------+-------+-----------+------+------------+------+-------+--------+
```

---

### 13. Find Employees and jobs earning between 1200 and 1400.
```sql
SELECT ENAME, JOB, SAL FROM employee 
WHERE SAL BETWEEN 1200 AND 1400;
```

### 📊 Output
```sql
+--------+-----------+------+
| ENAME  | JOB       | SAL  |
+--------+-----------+------+
| WARD   | SALESMAN  | 1250 |
| MARTIN | SALESMAN  | 1250 |
| MILLER | CLERK     | 1300 |
+--------+-----------+------+
```

---

### 14. List Name and Department Number of employee who are clerks, analyst or salesman.
```sql
SELECT ENAME, DEPTNO FROM employee 
WHERE JOB IN ('CLERK','ANALYST','SALESMAN');
```
```sql
+--------+--------+
| ENAME  | DEPTNO |
+--------+--------+
| SMITH  | 20     |
| ALLEN  | 30     |
| WARD   | 30     |
| MARTIN | 30     |
| TURNER | 30     |
| ADAMS  | 20     |
| JAMES  | 30     |
| FORD   | 20     |
| MILLER | 10     |
+--------+--------+
```

---

### 15. List Name and Department Number of employee whose names began with M.
```sql
SELECT ENAME, DEPTNO FROM employee 
WHERE ENAME LIKE 'M%';
```

### 📊 Output
```sql
+--------+--------+
| ENAME  | DEPTNO |
+--------+--------+
| MARTIN | 30     |
| MILLER | 10     |
+--------+--------+
```

---

### 16. List all employees and jobs in Department 30 in descending order by salary.
```sql
SELECT ENAME, JOB, SAL FROM employee 
WHERE DEPTNO = 30 
ORDER BY SAL DESC;
```

### 📊 Output
```sql
+--------+-----------+------+
| ENAME  | JOB       | SAL  |
+--------+-----------+------+
| BLAKE  | MANAGER   | 2850 |
| ALLEN  | SALESMAN  | 1600 |
| TURNER | SALESMAN  | 1500 |
| WARD   | SALESMAN  | 1250 |
| MARTIN | SALESMAN  | 1250 |
| JAMES  | CLERK     | 950  |
+--------+-----------+------+
```

---

### 17. List job and Department Number of employees whose name are five letters long begin with “A” and end with “N”.
```sql
SELECT JOB, DEPTNO FROM employee 
WHERE ENAME LIKE 'A___N';
```

### 📊 Output
```sql
+------+--------+
| JOB  | DEPTNO |
+------+--------+
| SALESMAN | 30 |
+------+--------+
```

---

### 18. Display the name of employees whose name start with alphabet S.
```sql
SELECT ENAME FROM employee WHERE ENAME LIKE 'S%';
```

### 📊 Output
```sql
+-------+
| ENAME |
+-------+
| SMITH |
| SCOTT |
+-------+
```

---

### 19. Display the names of employees whose name ends with alphabet S.
```sql
SELECT ENAME FROM employee WHERE ENAME LIKE '%S';
```

### 📊 Output
```sql
+-------+
| ENAME |
+-------+
| JONES |
| ADAMS |
+-------+
```

---

### 20. Display the names of employees working in department number 10 or 20 or 40 or employees working as clerks, salesman or analyst.
```sql
SELECT ENAME FROM employee 
WHERE DEPTNO IN (10,20,40) 
OR JOB IN ('CLERK','SALESMAN','ANALYST');
```

### 📊 Output
```sql
+--------+
| ENAME  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
```

---

### 21. Display employee number and names for employees who earn commission.
```sql
SELECT EMPNO, ENAME FROM employee WHERE COMM IS NOT NULL AND COMM > 0;
```

### 📊 Output
```sql
+-------+--------+
| EMPNO | ENAME  |
+-------+--------+
| 7499  | ALLEN  |
| 7521  | WARD   |
| 7654  | MARTIN |
+-------+--------+
```

---

### 22. Display employee number and total salary for each employee.
```sql
SELECT EMPNO, SAL + IFNULL(COMM,0) AS TOTAL_SAL FROM employee;
```

### 📊 Output
```sql
+-------+-----------+
| EMPNO | TOTAL_SAL |
+-------+-----------+
| 7369  | 800       |
| 7499  | 1900      |
| 7521  | 1550      |
| 7566  | 2975      |
| 7654  | 2650      |
| 7698  | 2850      |
| 7782  | 2450      |
| 7788  | 3000      |
| 7839  | 5000      |
| 7844  | 1500      |
| 7876  | 1100      |
| 7900  | 950       |
| 7902  | 3000      |
| 7934  | 1300      |
+-------+-----------+
```

---

### 23. Display employee number and annual salary for each employee.
```sql
SELECT EMPNO, SAL * 12 AS ANNUAL_SAL FROM employee;
```

### 📊 Output
```sql
+-------+-------------+
| EMPNO | ANNUAL_SAL  |
+-------+-------------+
| 7369  | 9600        |
| 7499  | 19200       |
| 7521  | 15000       |
| 7566  | 35700       |
| 7654  | 15000       |
| 7698  | 34200       |
| 7782  | 29400       |
| 7788  | 36000       |
| 7839  | 60000       |
| 7844  | 18000       |
| 7876  | 13200       |
| 7900  | 11400       |
| 7902  | 36000       |
| 7934  | 15600       |
+-------+-------------+
```

---

### 24. Display the names of all employees working as clerks and drawing a salary more than 3,000.
```sql
SELECT ENAME FROM employee 
WHERE JOB = 'CLERK' AND SAL > 3000;
```

### 📊 Output
```sql
Empty set
```

---

### 25. Display the names of employees who are working as clerk, salesman or analyst and drawing a salary more than 3,000.
```sql
SELECT ENAME FROM employee 
WHERE JOB IN ('CLERK','SALESMAN','ANALYST') AND SAL > 3000;
```

### 📊 Output
```sql
Empty set
```

---

### 26. Employees joined before 30-June-1980 or after 31-Dec-1981
```sql
SELECT ENAME, HIREDATE FROM employee 
WHERE HIREDATE < '1980-06-30' OR HIREDATE > '1981-12-31';
```

### 📊 Output
```sql
+--------+------------+
| ENAME  | HIREDATE   |
+--------+------------+
| SCOTT  | 1982-12-09 |
| ADAMS  | 1983-01-12 |
| MILLER | 1982-01-23 |
+--------+------------+
```

---

### 27. Names having second alphabet A
```sql
SELECT ENAME FROM employee WHERE ENAME LIKE '_A%';
```

### 📊 Output
```sql
+--------+
| ENAME  |
+--------+
| JAMES  |
| WARD   |
| MARTIN |
+--------+
```

---

### 28. Names exactly five characters
```sql
SELECT ENAME FROM employee WHERE ENAME LIKE '_____';
```

### 📊 Output
```sql
+-------+
| ENAME |
+-------+
| SMITH |
| ALLEN |
| WARD  |
| JONES |
| BLAKE |
| CLARK |
| SCOTT |
| ADAMS |
| JAMES |
| FORD  |
+-------+
```

---

### 29. Names having second alphabet A (same as Q2)
```sql
SELECT ENAME FROM employee WHERE ENAME LIKE '_A%';
```

### 📊 Output
```sql
+--------+
| ENAME  |
+--------+
| JAMES  |
| WARD   |
| MARTIN |
+--------+
```

---

### 30. Employees not working as salesman, clerk or analyst
```sql
SELECT ENAME FROM employee 
WHERE JOB NOT IN ('SALESMAN','CLERK','ANALYST');
```

### 📊 Output
```sql
+--------+
| ENAME  |
+--------+
| JONES  |
| BLAKE  |
| CLARK  |
| KING   |
+--------+
```

---

### 31. Name with annual salary (highest first)
```sql
SELECT ENAME, SAL*12 AS ANNUAL_SAL 
FROM employee 
ORDER BY ANNUAL_SAL DESC;
```

### 📊 Output
```sql
+--------+-------------+
| ENAME  | ANNUAL_SAL  |
+--------+-------------+
| KING   | 60000       |
| SCOTT  | 36000       |
| FORD   | 36000       |
| JONES  | 35700       |
| BLAKE  | 34200       |
| CLARK  | 29400       |
| ALLEN  | 19200       |
| TURNER | 18000       |
| WARD   | 15000       |
| MARTIN | 15000       |
| MILLER | 15600       |
| ADAMS  | 13200       |
| JAMES  | 11400       |
| SMITH  | 9600        |
+--------+-------------+
```

---

### 32. Salary breakdown
```sql
SELECT ENAME, SAL,
(SAL*0.15) AS HRA,
(SAL*0.10) AS DA,
(SAL*0.05) AS PF,
(SAL + (SAL*0.15) + (SAL*0.10) - (SAL*0.05)) AS TOTALSAL
FROM employee
ORDER BY TOTALSAL;
```

### 📊 Output
```sql
+--------+------+--------+--------+--------+-----------+
| ENAME  | SAL  | HRA    | DA     | PF     | TOTALSAL  |
+--------+------+--------+--------+--------+-----------+
| SMITH  | 800  | 120.00 | 80.00  | 40.00  | 960.00    |
| JAMES  | 950  | 142.50 | 95.00  | 47.50  | 1140.00   |
| ADAMS  | 1100 | 165.00 | 110.00 | 55.00  | 1320.00   |
| MILLER | 1300 | 195.00 | 130.00 | 65.00  | 1560.00   |
| WARD   | 1250 | 187.50 | 125.00 | 62.50  | 1500.00   |
| MARTIN | 1250 | 187.50 | 125.00 | 62.50  | 1500.00   |
| TURNER | 1500 | 225.00 | 150.00 | 75.00  | 1800.00   |
| ALLEN  | 1600 | 240.00 | 160.00 | 80.00  | 1920.00   |
| CLARK  | 2450 | 367.50 | 245.00 | 122.50 | 2940.00   |
| BLAKE  | 2850 | 427.50 | 285.00 | 142.50 | 3420.00   |
| JONES  | 2975 | 446.25 | 297.50 | 148.75 | 3570.00   |
| SCOTT  | 3000 | 450.00 | 300.00 | 150.00 | 3600.00   |
| FORD   | 3000 | 450.00 | 300.00 | 150.00 | 3600.00   |
| KING   | 5000 | 750.00 | 500.00 | 250.00 | 6000.00   |
+--------+------+--------+--------+--------+-----------+
```

---

### 33. Update salary by 10% where no commission
```sql
UPDATE employee 
SET SAL = SAL + (SAL*0.10) 
WHERE COMM IS NULL;

SELECT ENAME, SAL FROM employee;
```

### 📊 Output
```sql
+-------+--------+--------+-------+
| EMPNO | ENAME  | SAL    | COMM  |
+-------+--------+--------+-------+
| 7369  | SMITH  | 880.00 | NULL  |
| 7499  | ALLEN  | 1600   | 300   |
| 7521  | WARD   | 1250   | 300   |
| 7566  | JONES  | 3272.50| NULL  |
| 7654  | MARTIN | 1250   | 1400  |
| 7698  | BLAKE  | 3135.00| NULL  |
| 7782  | CLARK  | 2695.00| NULL  |
| 7788  | SCOTT  | 3300.00| NULL  |
| 7839  | KING   | 5500.00| NULL  |
| 7844  | TURNER | 1500   | 0     |
| 7876  | ADAMS  | 1210.00| NULL  |
| 7900  | JAMES  | 950    | NULL  |
| 7902  | FORD   | 3300.00| NULL  |
| 7934  | MILLER | 1430.00| NULL  |
+-------+--------+--------+-------+
```

---

### 34. Employees with salary >3000 after 20% increment
```sql
SELECT ENAME, SAL*1.20 AS NEW_SAL 
FROM employee 
WHERE (SAL*1.20) > 3000;
```

### 📊 Output
```sql
+--------+---------+
| ENAME  | NEW_SAL |
+--------+---------+
| JONES  | 3570    |
| BLAKE  | 3420    |
| SCOTT  | 3600    |
| FORD   | 3600    |
| KING   | 6000    |
+--------+---------+
```

---

### 35. Employees whose salary has at least 3 digits
```sql
SELECT ENAME, SAL FROM employee 
WHERE SAL >= 100;
```

### 📊 Output
```sql
+--------+------+
| ENAME  | SAL  |
+--------+------+
| SMITH  | 800  |
| JAMES  | 950  |
+--------+------+
```

---

### 36. Display the total number of employee working in the company.
```sql
SELECT COUNT(*) FROM employee;
```

### 📊 Output
```sql
+----------+
| COUNT(*) |
+----------+
| 14       |
+----------+
```

---

### 37. Display the total salary being paid to all employees.
```sql
SELECT SUM(SAL) FROM employee;
```

### 📊 Output
```sql
+----------+
| SUM(SAL) |
+----------+
| 29025    |
+----------+
```

---

### 38. Display the maximum salary from employee table.
```sql
SELECT MAX(SAL) FROM employee;
```

### 📊 Output
```sql
+----------+
| MAX(SAL) |
+----------+
| 5000     |
+----------+
```

---

### 39. Display the minimum salary from employee table.
```sql
SELECT MIN(SAL) FROM employee;
```

### 📊 Output
```sql
+----------+
| MIN(SAL) |
+----------+
| 800      |
+----------+
```

---

### 40. Display the average salary from employee table
```sql
SELECT AVG(SAL) FROM employee;
```

### 📊 Output
```sql
+----------+
| AVG(SAL) |
+----------+
| 2073.21  |
+----------+
```

---

### 41. Display the maximum salary being paid to clerk.
```sql
SELECT MAX(SAL) FROM employee WHERE JOB='CLERK';
```

### 📊 Output
```sql
+----------+
| MAX(SAL) |
+----------+
| 1300     |
+----------+
```

---

### 42. Display the maximum salary being paid in dept no 20.
```sql
SELECT MAX(SAL) FROM employee WHERE DEPTNO=20;
```

### 📊 Output
```sql
+----------+
| MAX(SAL) |
+----------+
| 3000     |
+----------+
```

---

### 43. Display the minimum salary paid to any salesman.
```sql
SELECT MIN(SAL) FROM employee WHERE JOB='SALESMAN';
```

### 📊 Output
```sql
+----------+
| MIN(SAL) |
+----------+
| 1250     |
+----------+
```

---

### 44. Display the average salary drawn by managers.
```sql
SELECT AVG(SAL) FROM employee WHERE JOB='MANAGER';
```

### 📊 Output
```sql
+----------+
| AVG(SAL) |
+----------+
| 2758.33  |
+----------+
```

---

### 45. Display the total salary drawn by analyst working in dept no 40.
```sql
SELECT SUM(SAL) FROM employee WHERE JOB='ANALYST' AND DEPTNO=40;
```

### 📊 Output
```sql
+----------+
| SUM(SAL) |
+----------+
| 3000     |
+----------+
```

---

### 46. Display the names of the employee in Uppercase.
```sql
SELECT UPPER(ENAME) FROM employee;
```

### 📊 Output
```sql
+--------+
| UPPER  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
```

---

### 47. Display the names of the employee in Lowercase.
```sql
SELECT LOWER(ENAME) FROM employee;
```

### 📊 Output
```sql
+--------+
| LOWER  |
+--------+
| smith  |
| allen  |
| ward   |
| jones  |
| martin |
| blake  |
| clark  |
| scott  |
| king   |
| turner |
| adams  |
| james  |
| ford   |
| miller |
+--------+
```

---

### 48. Display the names of the employee in Proper case.
```sql
SELECT CONCAT(UPPER(SUBSTRING(ENAME,1,1)), LOWER(SUBSTRING(ENAME,2))) FROM employee;
```

### 📊 Output
```sql
+--------+
| PROPER |
+--------+
| Smith  |
| Allen  |
| Ward   |
| Jones  |
| Martin |
| Blake  |
| Clark  |
| Scott  |
| King   |
| Turner |
| Adams  |
| James  |
| Ford   |
| Miller |
+--------+
```

---

### 49. Display the length of Your name using appropriate function.
```sql
SELECT LENGTH('HIMANSHU');
```

### 📊 Output
```sql
+--------------------+
| LENGTH('HIMANSHU') |
+--------------------+
| 8                  |
+--------------------+
```

---

### 50. Display the length of all the employee names.
```sql
SELECT ENAME, LENGTH(ENAME) FROM employee;
```

### 📊 Output
```sql
+--------+----------------+
| ENAME  | LENGTH(ENAME)  |
+--------+----------------+
| SMITH  | 5              |
| ALLEN  | 5              |
| WARD   | 4              |
| JONES  | 5              |
| MARTIN | 6              |
| BLAKE  | 5              |
| CLARK  | 5              |
| SCOTT  | 5              |
| KING   | 4              |
| TURNER | 6              |
| ADAMS  | 5              |
| JAMES  | 5              |
| FORD   | 4              |
| MILLER | 6              |
+--------+----------------+
```

---
### 51. Display empno, ename, deptno with department name (CASE used instead of DECODE)
```sql
SELECT EMPNO,ENAME,CASE DEPTNO WHEN 10 THEN 'RESEARCH' WHEN 20 THEN 'ACCOUNTING' WHEN 30 THEN 'SALES' WHEN 40 THEN 'OPERATIONS' END AS DNAME FROM employee;
```

### 📊 Output
```sql
+-------+--------+------------+
| EMPNO | ENAME  | DNAME      |
+-------+--------+------------+
|  7369 | SMITH  | ACCOUNTING |
|  7499 | ALLEN  | SALES      |
|  7521 | WARD   | SALES      |
|  7566 | JONES  | ACCOUNTING |
|  7654 | MARTIN | SALES      |
|  7698 | BLAKE  | SALES      |
|  7782 | CLARK  | ACCOUNTING |
|  7788 | SCOTT  | OPERATIONS |
|  7839 | KING   | ACCOUNTING |
|  7844 | TURNER | SALES      |
|  7876 | ADAMS  | ACCOUNTING |
|  7900 | JAMES  | SALES      |
|  7902 | FORD   | ACCOUNTING |
|  7934 | MILLER | RESEARCH   |
+-------+--------+------------+
```

---

### 52. Display your age in days.
```sql
SELECT DATEDIFF(CURDATE(),'2003-01-01') AS AGE_IN_DAYS;
```

### 📊 Output
```sql
+-------------+
| AGE_IN_DAYS |
+-------------+
|        8511 |
+-------------+
```

---

### 53. Display your age in months.
```sql
SELECT TIMESTAMPDIFF(MONTH,'2003-01-01',CURDATE()) AS AGE_IN_MONTHS;
```

### 📊 Output
```sql
+---------------+
| AGE_IN_MONTHS |
+---------------+
|           279 |
+---------------+
```

---

### 54. Display the current date in formatted style
```sql
SELECT DATE_FORMAT(CURDATE(),'%D %M %W %Y');
```

### 📊 Output
```sql
+--------------------------------------+
| DATE_FORMAT(CURDATE(),'%D %M %W %Y') |
+--------------------------------------+
| 21st April Tuesday 2026              |
+--------------------------------------+
```

---

### 55. Display the following output for each row from employee table.
```sql
SELECT CONCAT(ENAME,' has joined on ',DATE_FORMAT(HIREDATE,'%W %D %M %Y')) FROM employee;
```

### 📊 Output
```sql
+--------------------------------------+
| DATE_FORMAT(CURDATE(),'%D %M %W %Y') |
+--------------------------------------+
| 21st April Tuesday 2026              |
+--------------------------------------+
```

---

### 56. Scott has joined the company on Wednesday 13th August Nineteen Ninety
```sql
SELECT CONCAT(ENAME,' has joined the company on ',DATE_FORMAT(HIREDATE,'%W %D %M %Y')) FROM employee WHERE ENAME='SCOTT';
```

### 📊 Output
```sql
+---------------------------------------------------------------------------------+
| CONCAT(ENAME,' has joined the company on ',DATE_FORMAT(HIREDATE,'%W %D %M %Y')) |
+---------------------------------------------------------------------------------+
| SCOTT has joined the company on Thursday 9th December 1982                      |
+---------------------------------------------------------------------------------+
```

---
 ### 57. Find the date for nearest Saturday after current date.
 ```sql
SELECT DATE_ADD(CURDATE(),INTERVAL (7-DAYOFWEEK(CURDATE())) DAY);
```

### 📊 Output
```sql
+-----------------------------------------------------------+
| DATE_ADD(CURDATE(),INTERVAL (7-DAYOFWEEK(CURDATE())) DAY) |
+-----------------------------------------------------------+
| 2026-04-25                                                |
+-----------------------------------------------------------+
```

---

### 58. Display current time.
```sql
SELECT CURTIME();
```

### 📊 Output
```sql
+-----------+
| CURTIME() |
+-----------+
| 18:52:18  |
+-----------+
```

---

### 59. Display the date three months before the current date
```sql
SELECT DATE_SUB(CURDATE(),INTERVAL 3 MONTH);
```

### 📊 Output
```sql
+--------------------------------------+
| DATE_SUB(CURDATE(),INTERVAL 3 MONTH) |
+--------------------------------------+
| 2026-01-21                           |
+--------------------------------------+
```

---

### 60. Display those employees who joined in the month of Dec.
```sql
SELECT * FROM employee WHERE MONTH(HIREDATE)=12;
```

### 📊 Output
```sql
+-------+-------+---------+------+------------+------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+-------+---------+------+------------+------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  880 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3300 | NULL |     40 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 | 1045 | NULL |     30 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3300 | NULL |     20 |
+-------+-------+---------+------+------------+------+------+--------+
```

---

### 61. Display those employees whose first 2 characters from hire date = last 2 characters of salary.
```sql
SELECT * FROM employee WHERE LEFT(HIREDATE,2)=RIGHT(SAL,2);
```

### 📊 Output
```sql
Empty set (0.001 sec)

```

---

### 62. Display those employees whose 10% of salary is equal to the year of joining.
```sql
SELECT * FROM employee WHERE (SAL*0.10)=YEAR(HIREDATE);
```

### 📊 Output
```sql
Empty set (0.001 sec)

```

---

### 63. Display those employees who joined the company before 15 of the month.
```sql
SELECT * FROM employee WHERE DAY(HIREDATE)<15;
```

### 📊 Output
```sql
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 3273 | NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 3135 | NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2695 | NULL |     20 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3300 | NULL |     40 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1210 | NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 | 1045 | NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3300 | NULL |     20 |
+-------+--------+----------+------+------------+------+------+--------+
```

---

### 64. Display those employees who has joined before 15th of the month
```sql
SELECT * FROM employee WHERE DAY(HIREDATE)<15;
```

### 📊 Output
```sql
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 3273 | NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 3135 | NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2695 | NULL |     20 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3300 | NULL |     40 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1210 | NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 | 1045 | NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3300 | NULL |     20 |
+-------+--------+----------+------+------------+------+------+--------+
```

---

### 65. Display those employees whose joining DATE is available in deptno
```sql
SELECT * FROM employee WHERE DAY(HIREDATE)=DEPTNO;
```

### 📊 Output
```sql
Empty set (0.003 sec)

```

### 66. Compute the Number of Days Remaining in This Year
```sql
SELECT CURDATE() AS TODAY,
CONCAT(YEAR(CURDATE()), '-12-31') AS YEAR_END,
DATEDIFF(CONCAT(YEAR(CURDATE()), '-12-31'),
CURDATE()) AS DAYS_REMAINING;
```

### 📊 Output
```sql
+------------+------------+----------------+
| TODAY      | YEAR_END   | DAYS_REMAINING |
+------------+------------+----------------+
| 2026-02-12 | 2026-12-31 |            322 |
+------------+------------+----------------+
```

---

### 67. Display the maximum salary, minimum salary, and the difference between them
```sql
SELECT MAX(SAL) AS HIGHEST_SALARY,
       MIN(SAL) AS LOWEST_SALARY,
       MAX(SAL) - MIN(SAL) AS DIFFERENCE
FROM EMPLOYEE;
```

### 📊 Output
```sql
+----------------+---------------+------------+
| HIGHEST_SALARY | LOWEST_SALARY | DIFFERENCE |
+----------------+---------------+------------+
|           5000 |           800 |       4200 |
+----------------+---------------+------------+

```

---

### 68. Find employees where COMM > 25% of SAL.
```sql
SELECT ENAME, SAL, COMM,
SAL * 0.25 AS SAL_25_PERCENT
FROM EMPLOYEE
WHERE COMM > SAL * 0.25;
```

### 📊 Output
```sql
+--------+------+------+----------------+
| ENAME  | SAL  | COMM | SAL_25_PERCENT |
+--------+------+------+----------------+
| MARTIN | 1250 | 1400 |         312.50 |
+--------+------+------+----------------+
1 row in set (0.001 sec)
```

---

### 69. Display employee salaries formatted with a dollar sign ($) prefix.
```sql
SELECT ENAME,
CONCAT('$', FORMAT(SAL, 2)) AS SALARY_IN_DOLLARS
FROM EMPLOYEE;
```

### 📊 Output
```sql
+--------+-------------------+
| ENAME  | SALARY_IN_DOLLARS |
+--------+-------------------+
| SMITH  | $800.00           |
| ALLEN  | $1,600.00         |
| WARD   | $1,250.00         |
| JONES  | $2,975.00         |
| MARTIN | $1,250.00         |
| BLAKE  | $2,850.00         |
| CLARK  | $2,450.00         |
| SCOTT  | $3,000.00         |
| KING   | $5,000.00         |
| TURNER | $1,500.00         |
| ADAMS  | $1,100.00         |
| JAMES  | $950.00           |
| FORD   | $3,000.00         |
| MILLER | $1,300.00         |
+--------+-------------------+
```

---

### 70. Create a cross-tabulation (matrix/pivot) showing each job, the salary for that job in each department, and the total salary across all departments.
```sql
SELECT JOB,
       SUM(CASE WHEN DEPTNO = 10 THEN SAL ELSE 0 END) AS DEPT_10,
       SUM(CASE WHEN DEPTNO = 20 THEN SAL ELSE 0 END) AS DEPT_20,
       SUM(CASE WHEN DEPTNO = 30 THEN SAL ELSE 0 END) AS DEPT_30,
       SUM(CASE WHEN DEPTNO = 40 THEN SAL ELSE 0 END) AS DEPT_40,
       SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY JOB
ORDER BY JOB;
```

### 📊 Output
```
+-----------+---------+---------+---------+---------+--------------+
| JOB       | DEPT_10 | DEPT_20 | DEPT_30 | DEPT_40 | TOTAL_SALARY |
+-----------+---------+---------+---------+---------+--------------+
| ANALYST   |       0 |    3000 |       0 |    3000 |         6000 |
| CLERK     |    1300 |    1900 |     950 |       0 |         4150 |
| MANAGER   |       0 |    5425 |    2850 |       0 |         8275 |
| PRESIDENT |       0 |    5000 |       0 |       0 |         5000 |
| SALESMAN  |       0 |       0 |    5600 |       0 |         5600 |
+-----------+---------+---------+---------+---------+--------------+

```

---

### 71. Display the total number of employees and how many were hired in each year (1980, 1981, 1982, 1983).
```sql
SELECT COUNT(*) AS TOTAL_EMPLOYEES,
       SUM(CASE WHEN YEAR(HIREDATE) = 1980 THEN 1 ELSE 0 END) AS HIRED_1980,
       SUM(CASE WHEN YEAR(HIREDATE) = 1981 THEN 1 ELSE 0 END) AS HIRED_1981,
       SUM(CASE WHEN YEAR(HIREDATE) = 1982 THEN 1 ELSE 0 END) AS HIRED_1982,
       SUM(CASE WHEN YEAR(HIREDATE) = 1983 THEN 1 ELSE 0 END) AS HIRED_1983
FROM EMPLOYEE;
```

### 📊 Output
```sql
+-----------------+------------+------------+------------+------------+
| TOTAL_EMPLOYEES | HIRED_1980 | HIRED_1981 | HIRED_1982 | HIRED_1983 |
+-----------------+------------+------------+------------+------------+
|              14 |          1 |         10 |          2 |          1 |
+-----------------+------------+------------+------------+------------+
```

---

### 72. Find the last Sunday of the current month.
```sql
SELECT LAST_DAY(CURDATE()) AS LAST_DAY_OF_MONTH,
DATE_SUB(LAST_DAY(CURDATE()),
INTERVAL WEEKDAY(LAST_DAY(CURDATE()) + INTERVAL 1 DAY) DAY) AS LAST_SUNDAY;
```

### 📊 Output
```sql
+-------------------+-------------+
| LAST_DAY_OF_MONTH | LAST_SUNDAY |
+-------------------+-------------+
| 2026-04-30        | 2026-04-26  |
+-------------------+-------------+
```

---

### 73. Display Department Numbers and Total Number of Employees in Each Department
```sql
SELECT DEPTNO,
COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE
GROUP BY DEPTNO
ORDER BY DEPTNO;
```

### 📊 Output
```sql
+--------+-----------------+
| DEPTNO | TOTAL_EMPLOYEES |
+--------+-----------------+
|     10 |               1 |
|     20 |               6 |
|     30 |               5 |
|     40 |               1 |
+--------+-----------------+

```

---

### 74. Display the Various Jobs and Total Number of Employees Within Each Job Group
```sql
SELECT JOB,
COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE
GROUP BY JOB
ORDER BY TOTAL_EMPLOYEES DESC;
```

### 📊 Output
```sql
+-----------+-----------------+
| JOB       | TOTAL_EMPLOYEES |
+-----------+-----------------+
| SALESMAN  |               4 |
| CLERK     |               4 |
| MANAGER   |               3 |
| ANALYST   |               2 |
| PRESIDENT |               1 |
+-----------+-----------------+

```

---

### 75. Display the Department Numbers and Total Salary for Each Department
```sql
SELECT DEPTNO,
SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPTNO
ORDER BY DEPTNO;
```

### 📊 Output
```sql
+--------+--------------+
| DEPTNO | TOTAL_SALARY |
+--------+--------------+
|     10 |         1300 |
|     20 |        14325 |
|     30 |        10450 |
|     40 |         3000 |
+--------+--------------+
```
---


















