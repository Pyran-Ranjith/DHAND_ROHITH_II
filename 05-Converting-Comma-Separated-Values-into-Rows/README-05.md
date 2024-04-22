# 05-Converting-Comma-Separated-Values-into-Rows
## Converting Comma Separated Values into Rows 
### Author: Rohith Dhand
[Converting Comma Separated Values into Rows ](https://youtu.be/iuFcgWaNaIg?list=PLGg1nRFYmF5hxiStABfecPwRcWSGlmFyZ&t=25)
### Create a new database
- click 'new query' tab and type following lines
    ```` sql
    -- Create a new database
    create database DRII05;
    ````
- click Excute button
- press refresh button. database with nme Test appeares under databases
### open databse
```` sql
-- open databse
use DRII05
````
### Create new table
- write click the Test db and click 'new query' and type folllowings
    ```` sql
    -- Create new table
    CREATE TABLE TestTable (
      Id INT PRIMARY KEY,
      ProjectIdds VARCHAR(50),
    )
    ````
- execute it and you will see table is created
### insert data into TestTable table
```` sql
		--insert data into TestTable table
		begin
			INSERT INTO TestTable VALUES
			  (1, 'P01,P02,P03');
			INSERT INTO TestTable VALUES
			  (2, 'P04,P05,P06')
		end
````
### disply all the records in TestTable table
```` sql
  -- disply all the records in TestTable table 
  select * from TestTable;
````

### execute different quires
```` sql
/* STRING_SPLIT function */
select * from STRING_SPLIT('this is an example of string split function', ' ')

    -- Create a new database
    create database DRII05;
    -- open databse
    use DRII05;

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
````

