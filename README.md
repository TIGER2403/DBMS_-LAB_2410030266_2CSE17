# DBMS_LAB_2410030266_2CSE17
CREATE DATABASE himanshu_2cse17;

## Employee Table Structure:
```
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
```

```DESC employee;
```

```
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
## Department Table Structure:
```
CREATE TABLE department(
DEPTNO INT(2) PRIMARY KEY,
DNAME VARCHAR(15) NOT NULL);
```
```DESC department;````
```
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| DEPTNO | int(2)      | NO   | PRI | NULL    |       |
| DNAME  | varchar(15) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
```
### Elements Of Department Table:
USE himanshu_2cse17;

INSERT INTO department (DEPTNO, DNAME) VALUES
(10, 'RESEARCH'),
(20, 'ACCOUNTING'),
(30,'SALES'),
(40,'OPERATIONS');

SELECT * FROM department;
```
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
```
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
````
```SELECT * FROM employee;```
```
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
```sql
SELECT * FROM employee;
```

