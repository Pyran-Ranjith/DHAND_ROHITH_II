# 10-RowNumber-Rank-DenseRank-and-NTile-Functions-in-SQL-Server
## RowNumber, Rank, DenseRank and NTile Functions in SQL Server
### Author: Rohith Dhand
[RowNumber, Rank, DenseRank and NTile Functions in SQL Server](https://youtu.be/tUnsMg2hvFo?list=PLGg1nRFYmF5hxiStABfecPwRcWSGlmFyZ&t=8)
### Queries
```` sql
-- open databse
use DRII04
-- ROWNumber
select empno, ename from emp;
select empno, ename, row_number() over (order by sal desc) from emp;
select empno, ename, job, row_number() over (partition by job order by sal desc) from emp;

-- RANK
select empno, ename, job, sal, rank() over (order by sal desc) from emp;

-- DENSE_RANK
select empno, ename, job, sal, dense_rank() over (order by sal desc) from emp;

-- NTILE
select empno, ename, job, sal, dept, ntile(3) over (order by dept desc) from emp;

````

