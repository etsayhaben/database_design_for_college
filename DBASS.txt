
create database CollegeDataBaseSystem;
use CollegeDataBaseSystem;
create table Department
(
Dept_codee int,
Dept_name varchar(25) not null,
Dept_officeNo varchar(5) not null,
Dept_address varchar(15) not null,
primary key(Dept_codee)
);
insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(1,'software','A1','kuiha') ;
 insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(2,'computer_sience','A2','kuiha');
 insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(3,'agriculture','B1','Arid');
 insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(4,'Dental','D2','Ayder');
 insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(5,'veternary','C5','Asrasebat');
 select *from Department
 
 create table Head
 (
 Head_id int,
FName varchar(15) not null,
LName varchar(15) not null,
 Head_officeNo varchar(10) not null,
 Head_salary money not null,
 Gender char(5),
 primary key(Head_id),
 Dept_Codee int,
 foreign key( Dept_Codee ) references Department(Dept_codee)
 );
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(31,'dawit','ambachew','T1',6000,'M',1);
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(32,'eyob','ambaye','T2',6300,'M',2);
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(33,'merhawit','belay','G3',6500,'F',3);
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(34,'Selomon','Tsehaye','G5',5500,'M',4);
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(35,'Hana','Bereket','E5',7000,'F',5);
 insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender)
 values(36,'Hana','abebe','r4',9000,'F');
 select *from Head

 create table instructor
(
inst_id int,
Fname varchar(15) not null,
Lname varchar(15) not null,
Gender char(5),
Employ_Date varchar(22) not null,
sallary money not null,
primary key(inst_id),
Dept_Codee int,
 foreign key( Dept_Codee ) references Department(Dept_codee)
);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(12,'milion','g/r','F','sept 14 2013',9200,1);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(13,'abebe','g/r','m','oct 14 2012',8700,2);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(14,'helen','bedlu','F','jan 14 2011',77200,3);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(15,'gentu','tomas','m','jun 14 1993',15200,4);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(16,'gerae','emune','m','fbr 13 2010',123200,5);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary)
values(17,'hlina','bogale','f','sept 14 2005',10200);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary)
values(19,'hlina','bogale','f','sept 14 2005',10200);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary)
values(20,'haftamu','bogale','m','sept 14 2005',10200);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_Codee)
values(21,'haile','halefom','m','sept 14 2005',10200,1)
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_Codee)
values(22,'figrezgi','hailu','m','sept 14 2005',10200,1)
select *from instructor

 create table Course
 (
 C_code int,
 C_inst varchar(20) ,
 C_title varchar(20) not null,
 C_crh int,
 primary key(C_code),
   Dept_Codee int,
 foreign key( Dept_Codee ) references Department(Dept_codee),
  inst_ID int,
 foreign key( inst_ID ) references instructor(inst_id)
 );
 insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(101,'Fkradis','Webdesign',6,1,12);
  insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(102,'Fanuel','Advanced java',7,2,13);
 insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(103,'Fanuel','mobile programming',7,2,13);
 
 insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(304,'eyuel','mobile pro.',5,3,14);
 insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(405,'Million','compiler design',7,4,15);
 insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(303,'Maerg','Database',7,5,16);
  insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(307,'Mesfne','oprating system',4,17);
   insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(106,'haftamu','Advanced java',7,1,20);
   
 
 select *from Course

create table Student
(
Stud_id int,
FName varchar(15) not null,
LName varchar(15) not null,
Gender varchar(5),
DOB varchar(22) not null,
GPA float not null,
status varchar(10),
primary key(Stud_id)
);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(158046,'Getahun','Haftu','m','19/9/1989',3.5);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(158011,'Genet','Abrha','f','19/9/1989',3.6);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(156065,'Getasew','Ayanaw','m','14/4/1990',4);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(158088,'mana','Hiluf','f','19/9/1988',3.35);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(158047,'haftamu','Redae','m','19/9/1991',3.99);
 insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(158032,'meseret','Hadis','f','19/1/1987',3.75);


 select *from Student

create table Enroll
(
Sid int,
Cid int,
Enroll_date varchar(22),
primary key(Sid,Cid)
);
 insert into Enroll(Sid,Cid,Enroll_date)
 values(158046,101,'1/2/2010');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158046,102,'1/2/2010');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158011,102,'5/3/2009');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(156065,304,'2/2/2011');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158088,405,'4/3/2012');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158047,303,'7/2/2008');
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158032,307,'1/3/2010')
  insert into Enroll(Sid,Cid,Enroll_date)
 values(158032,303,'1/3/2010')


 select *from Enroll
 --6
 /*Query 1.list all the departement information in the colleage database system*/
 select dept_name,dept_address ,Dept_codee from Department 

/*  Query 2. retrive payment of all instructors in the colleage?*/

select distinct Fname,Lname, sallary 
from instructor ;

/*Query 3 which students got 4.0 GPA in the colleage. */

select *
from student
where GPA=4;

/*Query4. which instructors payed more than 7000*/

select distinct Fname,Lname, sallary
from instructor
where sallary>7000;

/*Query5.which departements are given in quiha and arid campus */

select *
from department
where Dept_address='arid' OR Dept_address='kuiha';

/*Query6.who female students in the colleage have more than 3.6 GPA */

select Fname,LName,GPA
from student 
where GPA>3.6 and Gender='f';

/*Query7. retrive students whose first name starts with G   */

select *
from student
where Fname like 'G%';

/*Query8, retrive all male head managers */

select *
from head
where Gender='M';

/*Query9.select courses with seven credit hour*/

select C_title , c_crh
from course
where C_crh='7';

/*Query10. which courses  are found in computer science Department */
select c_title,c_code,Dept_name from Department join Course 
on(Department.Dept_codee=course.Dept_Codee) where Dept_name='computer_sience';

/*Query11.retrive name and salary of  female instructors */

select Fname,sallary
from instructor
where Gender='F';

/*Query12.retrive name and salary of instructors in the order of decending salary */

select Fname,Lname,sallary
from instructor 
ORDER BY sallary DESC;

/*Query 13.retrive all information about instructer whose sallary is more than 15000 in assending the sallary    */

select * from instructor where  sallary>15000 order by sallary asc

/*Query14.retrive students with their first name between 'a' and 'h'*/
select Fname,Stud_id
from student
where Fname between 'a' and 'h';

/*Query15.get student information that born after 19/1/1987  */

select *
from student
where DOB >'19/1/1987';

/*Query16. select salary  and fname of head whose firtst name starts with H or m and their salary greater than than  5500*/

select Fname,Head_salary 
from head
where Fname like 'H%' 
OR Fname like 'M%'
 AND Head_salary>5500;

/*Query17.who teaches database course */

select C_inst
from Course where C_title='database';

/*Query18. display information about status of the  students */

select FName,GPA,'pass' as status from  Student where GPA>=3.5 
union 
select FName,GPA,'fail' as status from  Student where GPA<3.5

/*Query19.get department infromation that have  address other than kuiha*/

select *
from department
where Dept_address!='kuiha';

/*Query20.get name and salary of instructors that are ordered alphabeticaly by thier name */

select Fname,sallary
from instructor
ORDER BY Fname;

 --7
 --sub query 1.  retrive the name and employ date of all instructors who teaches in Dental.
 SELECT Fname,Lname ,Employ_Date
FROM instructor
WHERE Dept_codee in (
SELECT Dept_codee
FROM department
WHERE Dept_name='dental');

 --sub query 2. which departements  contain advanced java course.

 SELECT Dept_name
FROM department
WHERE Dept_codee in(
SELECT Dept_codee
FROM Course
WHERE C_title ='Advanced java' );

 --sub query 3.who are the heads of computer scince and software enginnering. 
 select FName,LName
 from Head
where Dept_Codee
in( 
select Dept_codee 
FROM department
WHERE Dept_name='computer_sience'or Dept_name='software' );

--8.select statments using  count and group

--1.how many number of studentes are in the colleage.

select count(Stud_id) as 'Total Student' from Student

--2.how many number of instructors work kuiha campus. 

select count(Dept_Codee) from instructor 
where Dept_Codee in (select Dept_Codee from Department where Dept_address='kuiha');

--3.retrive total payment of instructors for CS and software based on thier departement address.
SELECT Dept_address,sum(sallary) as 
sum FROM Department join instructor 
on(Department.Dept_codee=instructor.Dept_Codee)
WHERE Department.Dept_codee 
in (select Dept_Codee from Department
where Dept_name='computer_sience'or Dept_name='software')
group by Dept_address ;

--4.retrive total payment for male and female heads based on their Gender 

select Gender,sum( Head_salary) as total from Head  group by Gender

--9. select statments usin join

--join 1.what are the instructer name and salary that works in all departments

select Fname,Lname,sallary
from Department join instructor  on (Department.Dept_codee=instructor.Dept_Codee);

--join 2.retrive course name,credit hour and inst_id for all instructors,but inst_id   must include

select C_title,C_crh,instructor.inst_id
from instructor  left join Course on (instructor.inst_id=Course.inst_ID);

--join 3.retrive course title,course code and instructoor name for all instructors,but course code must include

select C_title,course.C_code,Fname
from instructor right join Course on (instructor.inst_id=Course.inst_ID);

--join 4.retrive course title,course code ,inst_id and instructoor name for all instructors,but course code and inst_id must include

select C_title,course.C_code,Fname,instructor.inst_id
from instructor full join Course on (instructor.inst_id=Course.inst_ID);

--join 5.which instructor get's maximum sallary from all the departments.
         select Fname,Lname,Sallary from instructor join Department on
		 (instructor.Dept_Codee=Department.Dept_codee)
		 where sallary in(select max(sallary) from instructor)
--10 insert statments

--1.insert a new department named IT with departmen code 6 that locates in Aynalem and it's ofice number is b32

insert into Department(Dept_codee,Dept_name,Dept_officeNo,Dept_address)
 values(6,'IT','B32','Aynalem') ;

--2.add a new instructor whose name Nolawi haftu with id 18 and payed 10000 employed on 1/7/2013

insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(18,'Nolawi','Haftu','M','march 1 20013',10000,6);

--3.add a new course named Digital logic with code of 105 and 5 credit hour.this course is teached by Nolawi haftu

insert into Course(C_code, C_inst, C_title,C_crh,Dept_codee,inst_id)
 values(105,'Nolawi Haftu','Digital Logic',5,5,18);

--4.add a new head for the new department whose name is Alembrhan Hagos whose Salary is 50000 and office number is A27 with id of 44

insert into Head(Head_id,FName,LName,Head_officeNo, Head_salary,Gender,Dept_codee)
 values(44,'Alembrhan','Hagos','A27',50000,'F',6);

--5.add a new student named abel ferede whose id is 1560 and born on 1993 

insert into Student(Stud_id,FName,LName,Gender,DOB,GPA)
values(1560,'Abel','Ferede','m','03/6/1993','');
--11 updating statments

--1.change the name of stuhdent who has stud-id 1560 to Gecho 

update Student set FName='Gecho' where Stud_id=1560

--2.  update  the name of an instructor  who teachs in  Dental

 update  instructor set Fname='belay'
WHERE Dept_codee in (
SELECT Dept_codee
FROM department
WHERE Dept_name='dental' );

update Course set C_title='java networking'
WHERE Dept_Codee in(
SELECT Dept_Codee
FROM Department 
     WHERE Dept_name='computer_sience' and C_title='Advanced java' )

select *from Course
select *from instructor

--3.udate  the name of Head who has salary  5500 and wh0se head office is G5

  update Head set FName='Amanuel' where  Head_salary=5500 and Head_officeNo='G5'

 --4.update the course name with  in CS departement advanced java to java networking.

 update Course set C_title='java networking'
WHERE Dept_Codee in(
SELECT Dept_Codee
FROM Department 
     WHERE Dept_name='computer_sience' and C_title='Advanced java' )


select * from Course
--5.edit the enroll date of a student who has id 158032 and course id 307

update Enroll set Enroll_date='5/5/2005' where Sid=158032 and Cid=307

--12.Delation statments 

--1.remove male students 

delete from student where Gender='m'

--2. delete the head Head_officeNo  and has sallary 10200

delete from head where Head_officeNo='E5'and Head_salary=7000

--3.remove head that has sallary less than 6500 and his/her first name or last name starts with m

delete from Head where Head_salary<6500 and FName like '%m%' or LName like '%m%'

--4.remove male  students and who have A GPA less than 4

delete from student where Gender='m' and GPA<4

--5.remove the enroll date of a student who has student id 158088 and course id 405
 
 delete from Enroll where Sid=158088 and Cid=405


  
  
 


