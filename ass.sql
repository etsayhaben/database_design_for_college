create database CollegeDataBaseSystem;
use CollegeDataBaseSystem;
create table Department
(
Dept_codee int,
Dept_name varchar(25),
Dept_officeNo varchar(23),
Dept_address varchar(32),
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
 create table Head
 (
 Dept_codee int,
 Head_id int,
FName varchar(25),
LName varchar(23),
 Head_officeNo varchar(21),
 Head_salary double,
 Gender char(7),
 primary key( Head_id),
 foreignkey int references Department(Dept_codee)
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
 create table Course
 (
 C_code int,
 C_inst varchar(20),
 C_title varchar(20),
 C_crh int,
 primary key(C_code),
  foreignkey int references instructor(inst_id)

 );
 insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(101,'Fkradis','Webdesign',6,12);
  insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(102,'Fanuel','Advanced java',7,13);
 insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(304,'eyuel','mobile pro.',5,14);
 insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(405,'Million','compiler design',7,15);
 insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(303,'Maerg','Database',7,16);
  insert into Course(C_code, C_inst, C_title,C_crh,inst_id)
 values(307,'Mesfne','oprating system',4,17);
create table instructor
(
inst_id int,
Fname varchar(30),
Lname varchar(20),
Gender char(4),
Employ_Date varchar(20),
sallary double,
primary key(inst_id),
foreignkey int references Department(Dept_codee)
);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(12,'milion','g/r','F','sept 14 20013',9200,1);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(13,'abebe','g/r','m','oct 14 2012',8700,2);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(14,'helen','bedlu','F','jan 14 2011',77200,3);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(15,'gentu','tomas','m','jun 14 1993',15200,4);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(16,'gerae','emune','m','fbr 13 2010',123200,5);
insert into instructor(inst_id,Fname,Lname,Gender,Employ_Date,sallary,Dept_codee)
values(17,'hlina','bogale','f','sept 14 2005',10200,6);
create table Student
(
Stud_id int,
FName varchar(24),
LName varchar(20),
Gender varchar(7),
DOB varchar(21),
GPA double,
primary key(Stud_id),
  foreignkey int references course( C_code)

);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(158046,'Getahun','Haftu','m','19/9/1989',3.5, 101);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(158011,'Genet','Abrha','f','19/9/1989',3.6, 102);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(156065,'Getasew','Ayanaw','m','14/4/1990',4,304);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(158088,'mana','Hiluf','f','19/9/1988',3.35,405);
insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(158047,'haftamu','Redae','m','19/9/1991',3.99,303);
 insert into Student(Stud_id,FName,LName,Gender,DOB,GPA, C_code)
values(158032,'meseret','Hadis','f','19/1/1987',3.75,307);


 