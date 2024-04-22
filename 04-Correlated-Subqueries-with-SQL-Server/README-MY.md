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
create table dept(   
  deptno     number(2,0),   
  dname      varchar2(14),   
  loc        varchar2(13),   
  constraint pk_dept primary key (deptno)   
)(
	DeptId int,
	Dname nvarchar(200)
)
    ````
- execute it and you will see table is created
### delete a table
```` sql
Drop table testdept;
````
### add new column
```` sql
Alter table testdept add loc nvarchar(200);
````
### remove a  column
```` sql
Alter table testdept drop column loc;
````
### resize a  column
```` sql
Alter table testdept alter column dame nvarchar(300);
````



