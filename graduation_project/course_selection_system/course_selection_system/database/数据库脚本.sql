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
alter table student modify grade int;
desc student;

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

drop table admin;
create table admin(
	id int auto_increment primary key,
	aid varchar(20) unique,
	password varchar(20),
	name varchar(20),
	usertype int
);

alter table student add usertype varchar(20);
select * from student;

alter table teacher add usertype varchar(20);

select * from user;
select * from student;
select * from teacher;
select * from admin;

insert into teacher(tname,tno,departmentno,password,usertype) values('test1','1','hahaha','123',2);
insert into admin (aid,password,name ,usertype) values('1','123','admin1','3');
select * from student;
select professionno from student;
insert into student(sname,sno,grade,password,professionNo,scredit,usertype) values('student1','1','1',)
