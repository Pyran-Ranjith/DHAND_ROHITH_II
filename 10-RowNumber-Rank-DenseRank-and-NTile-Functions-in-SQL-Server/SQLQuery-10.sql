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

