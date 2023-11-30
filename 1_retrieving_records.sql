SET search_path TO sqlcookbook;

-- -- 1 Retrieving All Rows and Columns from a Table
-- SELECT * FROM emp;

-- -- 2 Retrieving a Subset of Rows from a Table
-- SELECT * 
--   FROM emp
-- WHERE deptno = 10;

-- -- 5 Providing Meaningful Names for Columns
-- select sal as salary, comm as commission
--   from emp;

-- -- 6 Referencing an Aliased Column in the WHERE Clause
-- select *
--   from
--   (select sal as salary, comm as commission
--     from emp) x
-- where salary < 5000

-- 7 Concatenating Column Values
-- select ename||' WORKS AS A '||job as msg
--   from emp
-- where deptno=10

-- 12
select COALESCE(comm,0),*
  from emp
where comm is null

