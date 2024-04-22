# 04-Correlated-Subqueries-with-SQL-Server
## Correlated Subqueries with SQL Server
### Author: Rohith Dhand
[Correlated Subqueries with SQL Server](https://youtu.be/0nY4ZYDLzNY?list=PLGg1nRFYmF5hxiStABfecPwRcWSGlmFyZ&t=83)
### Create a new database
- click 'new query' tab and type following lines
    ```` sql
    create database DRII04;
    ````
- click Excute button
- press refresh button. database with nme Test appeares under databases
### Create new table
- write click the Test db and click 'new query' and type folllowings
    ```` sql
CREATE TABLE emp (
  empno INT PRIMARY KEY,
  ename VARCHAR(10),
  job VARCHAR(9),
  mgr INT NULL,
  hiredate DATETIME,
  sal NUMERIC(7,2),
  comm NUMERIC(7,2) NULL,
  dept INT
)
    ````
- execute it and you will see table is created
### insert data into emp table
```` sql
begin
INSERT INTO EMP VALUES
  (7369, 'SMITH', 'CLERK', 7902, '17-DEC-1980', 800, NULL, 20)
INSERT INTO EMP VALUES
  (7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)
INSERT INTO EMP VALUES
  (7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)
INSERT INTO EMP VALUES
  (7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)
INSERT INTO EMP VALUES
  (7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)
INSERT INTO EMP VALUES
  (7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)
INSERT INTO EMP VALUES
  (7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)
INSERT INTO EMP VALUES
  (7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)
INSERT INTO EMP VALUES
  (7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)
INSERT INTO EMP VALUES
  (7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)
INSERT INTO EMP VALUES
  (7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)
INSERT INTO EMP VALUES
  (7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)
INSERT INTO EMP VALUES
  (7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)
INSERT INTO EMP VALUES
  (7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)
end
````
### disply all the records in emp table
- click 'new query' tab and type following lines
    ```` sql
    /* disply all the records in emp table */
    select * from emp;
    ````
### execute different quires
- click 'new query' tab and type following lines
    ```` sql
    /*  WANT TO FIND OUT ALL EMPLOYEES WHO ARE GETTING SALARY GREATER THAN THE AVERAGE OF THE THEIR OWN DEPT */
	select * from emp x where x.sal > 
		(select avg(sal) from emp y where y.dept = x.dept);
