	-- open databse
	use DRII04

	/* disply all the records in emp table */
	select * from emp;

	-- sort the records by highest salary fist
	select * from emp order by sal desc;

	-- FIND OUT THE SECOND HIGHEST SALARY FROM THE EMPLOYEE TABLE
		select * from emp where sal <
		(select max(sal) from emp)
		order by sal DESC

		select max(sal) from emp where sal <
		(select max(sal) from emp)

		select * from emp where sal =
			(select max(sal) from emp where sal <
				(select max(sal) from emp)
			)
