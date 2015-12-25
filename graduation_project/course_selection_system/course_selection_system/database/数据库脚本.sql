select * from user_contact;
select * from user;

drop table student ;
drop table teacher;
drop table course ; 
drop table selectcourse;

create table student(
	id int auto_increment primary key ,
	sname varchar(20),
	sno varchar(20) unique,
	grade varchar(20),
	password varchar(30),
	professionNo varchar(20),
	scredit int
);

create table teacher(
	id int auto_increment primary key,
	tname varchar(20),
	tno varchar(20) unique,
	departmentno varchar(20),
	password varchar(20)
);

create table course(
	id int auto_increment primary key,
	cname varchar(20),
	cno varchar(20) unique,
	ccount int ,
	ctype varchar(20),
	ccredit int 
);

create table selectcourse(
	cno varchar(20),
	sno varchar(20)
);

create table profession(
	professionName varchar(50),
	professionNo varchar(20),
	departmentno varchar(20)
);

create table department(
	departmentno varchar(20),
	departmentname varchar(20)
);

