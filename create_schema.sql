DROP SCHEMA IF EXISTS sqlcookbook CASCADE;
CREATE SCHEMA sqlcookbook;

CREATE TABLE sqlcookbook.dept (
  deptno INT PRIMARY KEY NOT NULL,
  dname VARCHAR NOT NULL,
  loc VARCHAR NOT NULL
);

INSERT INTO sqlcookbook.dept(deptno, dname,loc)
VALUES
    (10, 'ACCOUNTING','NEW YORK'),
    (20, 'RESEARCH','DALLAS'),
    (30, 'SALES','CHICAGO'),
    (40, 'OPERATIONS','BOSTON');
CREATE TABLE sqlcookbook.emp (
  empno INT PRIMARY KEY NOT NULL,
  ename VARCHAR NOT NULL,
  job VARCHAR NOT NULL,
  mgr INT,
  hiredate DATE,
  sal DOUBLE PRECISION,
  comm INT,
  deptno int NOT NULL REFERENCES sqlcookbook.dept(deptno) ON DELETE SET NULL
);
INSERT INTO sqlcookbook.emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
VALUES
 (7369, 'SMITH', 'CLERK'    ,7902, '17-DEC-2005', 800,NULL,20),
 (7499, 'ALLEN', 'SALESMAN' ,7698, '20-FEB-2006',1600, 300,30),
 (7521, 'WARD', 'SALESMAN'  ,7698, '22-FEB-2006',1250, 500,30),
 (7566, 'JONES', 'MANAGER'  ,7839, '02-APR-2006',2975,NULL,20),
 (7654, 'MARTIN', 'SALESMAN',7698, '28-SEP-2006',1250,1400,30),
 (7698, 'BLAKE', 'MANAGER'  ,7839, '01-MAY-2006',2850,NULL,30),
 (7782, 'CLARK', 'MANAGER'  ,7839, '09-JUN-2006',2450,NULL,10),
 (7788, 'SCOTT', 'ANALYST'  ,7566, '09-DEC-2007',3000,NULL,20),
 (7839, 'KING', 'PRESIDENT', NULL, '17-NOV-2006',5000,NULL,10),
 (7844, 'TURNER', 'SALESMAN',7698, '08-SEP-2006',1500,   0,30),
 (7876, 'ADAMS', 'CLERK',    7788, '12-JAN-2008',1100,NULL,20),
 (7900, 'JAMES', 'CLERK',    7698, '03-DEC-2006', 950,NULL,30),
 (7902, 'FORD', 'ANALYST',   7566, '03-DEC-2006',3000,NULL,20),
 (7934, 'MILLER', 'CLERK',   7782, '23-JAN-2007',1300,NULL,10)
;

-- SELECT * FROM sqlcookbook.emp e
-- INNER JOIN sqlcookbook.dept d
-- ON e.deptno = d.deptno;

SET search_path TO sqlcookbook;
SHOW search_path;