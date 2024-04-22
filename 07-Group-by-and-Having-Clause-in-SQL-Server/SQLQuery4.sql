	-- open databse
	use DRII04

	/* disply all the records in emp table */
	select * from emp;

	-- GROUP BY
	-- Group by Deptno, Group by job
	-- MAX, MIN, AVG

	select job, avg(sal) from emp group by job

	-- count rowas too
	select job, count(*), avg(sal) from emp group by job

	-- better with coloumn names
	select job, count(*) as 'Total Employees', avg(sal) as 'Average Salary' from emp group by job

	-- WHERE IS JUST FOR USING AS A CONDITION TO FILTER ROWS
	select job, count(*) as 'Total Employees', avg(sal) as 'Average Salary' from emp WHERE JOB IN ('ANALYST', 'MANAGER') group by job

	-- HAVING CLAUSE WHICH IS USED FOR FILTERATION OF THE DAT WITHIN THE GROUP BY EXPRESSION
	select job, count(*) as 'Total Employees', avg(sal) as 'Average Salary' from emp WHERE JOB IN ('ANALYST', 'MANAGER') group by job
	HAVING AVG(SAL) < 3000

	-- SAME WITHOUT WHERE CLAUSE
	select job, count(*) as 'Total Employees', avg(sal) as 'Average Salary' from emp group by job
	HAVING AVG(SAL) < 3000
