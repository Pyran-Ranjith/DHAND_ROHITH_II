/* STRING_SPLIT function */
select * from STRING_SPLIT('this is an example of string split function', ' ')

    -- Create a new database
    create database DRII05;

	-- open databse
	use DRII05

	    -- Create new table
	CREATE TABLE TestTable (
	  Id INT PRIMARY KEY,
	  ProjectIdds VARCHAR(50),
	)

		--insert data into TestTable table
		begin
			INSERT INTO TestTable VALUES
			  (1, 'P01,P02,P03');
			INSERT INTO TestTable VALUES
			  (2, 'P04,P05,P06')
		end

	    -- disply all the records in TestTable table 
			select * from TestTable;

		-- 
			select x.id, y.value as 'MyColumn'
			from TestTable x
			Cross apply string_split(x.ProjectIdds, ',') y