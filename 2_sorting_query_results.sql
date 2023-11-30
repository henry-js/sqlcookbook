SET search_path TO sqlcookbook;

-- SELECT ename, job, sal FROM emp

-- WHERE deptno = 10
-- ORDER BY sal asc


create view V
 as
 select ename||' '||deptno as data
  from emp;
 select * from V;

 drop view V;