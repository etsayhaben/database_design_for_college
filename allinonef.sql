/* Problem 1. Create a table named "Department" with the following column specifications:
Department( deptid: int, Deptname: varchar, location: varchar, Depthead: varchar)
Solution:
 ============================================== */
CREATE TABLE Department (Deptid INT NOT NULL, 
 Deptname VARCHAR(20) NOT NULL,
 location VARCHAR(20) NOT NULL,  
 Depthead VARCHAR(20) NOT NULL,   
PRIMARY KEY (Deptid));

/*  Create a table named "Employees" with the following column specifications:
Employees( empid: int, Name:varchar, Gender: varchar, Salary: Float ,Depid int)
Solution:
 ==============================================
 */
 CREATE TABLE employees (
empID INT NOT NULL,
name VARCHAR(20) NOT NULL,
Gender VARCHAR(6) NOT NULL,
Salary FLOAT NOT NULL,
DeptID INT,
PRIMARY KEY (empID),FOREIGN KEY (DeptID) REFERENCES Department(ID));

-- Code the Insert statements required to add the following data to the Department table.

INSERT INTO Department VALUES (1,'SW','Quha','Yared');
INSERT INTO Department VALUES (2,'law','Adihaki','Amanu');
INSERT INTO Department VALUES (3,'CS','Quha','Meron');
INSERT INTO Department VALUES (4,'IS','Quha','Amir');
INSERT INTO Department VALUES (5,'Economics','Adihaki','Bereket');
INSERT INTO Department VALUES (6,'Pharmacy','Ayder','Helen');
INSERT INTO department (Deptid,deptname,location)  VALUES (8,'Civil','Quha');
INSERT INTO department (Deptid,deptname,location) VALUES (9,'Electrical','Quha');
INSERT INTO department (Deptid,deptname,location) VALUES (10,'Chemistry ','Aridi');

-- Code the Insert statements required to add the following data to the Employees table.

INSERT INTO employees VALUES (1,'Abebe','Male', 13000,2);
INSERT INTO employees VALUES (2,'Ruth','Female', 22000,3);
INSERT INTO employees VALUES (3,'Betty','Female', 13000,6);
INSERT INTO employees VALUES (4,'Ahmed','Male', 30000,3);
INSERT INTO employees VALUES (5,'Alex','Male', 16000,5);
INSERT INTO employees VALUES (6,'Selam','Female', 12000,4);
INSERT INTO employees (empid,name,gender,salary) VALUES (8,'yared','male',21000);
INSERT INTO employees (empid,name,gender,salary) VALUES (10,'jemal','male',33000);
INSERT INTO employees (empid,name,gender,salary)  VALUES (11,'Girma','male',32000);

-- TRY THE QUEUE
/* --------------------------
Comparison Operators
----------------------------
 */
 select deptname,depid
from department
where location='quha';

select empid,name,salary
from employees
where salary> 20000;
/* ----------------------
Logical Operators
-------------------------- */

select empid,name,salary
from employees
where salary=13000 OR salary=23000 ;

SELECT empid,name,salary
from employees
where (salary=13000 AND salary=23000) ;


SELECT empid,name,salary
from employees
where (salary=13000 AND salary<=23000) ;

select empid,name,salary
from employees
where NOT (salary=13000 AND salary<=23000) ;

/* -------------------------
Sorting results
-------------------- */
select deptname
from department
order by deptname;

select deptname
from department
order by deptname DESC;
/*--------------------------
Aggregate function
summery information
---------------------------*/
select count(*)
from employees;

select count(*)
from employees
where salary>20000;

select sum(salary)
from employees;

select AVG(salary)
from employees;
/* --------------------------
Patter matching
----------------------------
 */
 select count(*)
from employees
where name LIKE'A%'; 

-- any character after A, we dont care after that

select count(*)
from employees
where name LIKE'%A%'; 
-- at the middle

select count(*)
from employees
where name LIKE'%A%';

select count(*)
from employees
where name LIKE'_e%';
/* --------------------------
updating rows
-------------------------- */

update employees
set salary =30000
where empid= 1;
/* --------------------------
Deleting Rows
-------------------------
 */

  -- you can use drop statement to delete the table.

delete from employees
where name like 'ab%';

--- select depid or depthead
SELECT deptid,depthead
FROM department
WHERE deptname='sw' or deptname ='law' or deptname='is';
/*--you can use IN keyword*/

SELECT deptid,depthead
FROM department
WHERE deptname in('sw','law','is');

/*--subquery*/
-- list the name of employees who works for cs department

SELECT name 
FROM employees
WHERE deptid in (
SELECT depid
FROM department
WHERE deptname='cs');

-- not from department of IS

SELECT depid, deptname, depthead
FROM department
WHERE deptname in(
SELECT deptname
FROM department
WHERE deptname != 'IS');


-- increase the salary of employes they work for law department.
-- update employees

set salary= salary*1.1
where deptid in ( 
select deptid 
FROM department
WHERE deptname= 'law');
/*--what is the out of this query*/
SELECT salary
from employees
where deptid in ( select id  from department where location= 'quha');



/*---JOIN EXAMPLE*/

 -- Cartesian product of rows from tables in the join
SELECT *
FROM 
employees, department;

 /*--OR  another way*/
select name, deptname
from employees cross join department;

-- inner Join

select name, deptname,depthead 
from employees join department
on(employees.deptiddepartment.deptid );


-- name, deptname and depthead of all employees from cs department

select name, deptname,depthead
from employees e join department d
ON (e.deptid=d.deptid )
where deptname = 'cs';

/* If columns in an equi-join have the same name, SQ
 provides an optional shorthand notation for
 expressing equi-joins, by way of the USING construct
 */
select name, deptname,depthead
from employees join department 
USING (deptid );

-- Natural join with out condition

SELECT *
FROM employees natural join  department;

-- outer join left out join
select name, deptname,depthead
from employees e left join department d
ON (e.deptid=d.deptid );

-- right out join 

select name, deptname,depthead
from employees e right join department d
ON (e.deptid=d.deptid )
