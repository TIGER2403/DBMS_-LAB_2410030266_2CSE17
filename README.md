# DBMS_-LAB_2410030266_2CSE17
## Employee Table Structure:
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
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| DEPTNO | int(2)      | NO   | PRI | NULL    |       |
| DNAME  | varchar(15) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
```
