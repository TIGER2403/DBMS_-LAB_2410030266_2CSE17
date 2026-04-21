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

## 📊 Output
```sql
+--------+--------+
| ENAME  | DEPTNO |
+--------+--------+
| MARTIN | 30     |
| MILLER | 10     |
+--------+--------+
```


