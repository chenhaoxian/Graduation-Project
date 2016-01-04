--================================================临时sql脚本==========================================================
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
insert into student(sname,sno,grade,password,professionNo,scredit,usertype) values('student1','1',1,'123','1',0,1)

select * from course;
select * from student;
select * from profession;
drop table profession;
create table profession(
	professionName varchar(50),
	professionNo varchar(20) primary key,
	departmentno varchar(20)
);
select * from profession;
alter table student add  foreign key fk_student_professionno(professionno) references profession(professionno);
select * from student;
desc student;
alter table student drop column professionno;
select * from student;
alter table student add column professionno varchar(20);
alter table profession drop column departmentno;
alter table profession add column departmentNo varchar(20);

--====================================为student表的professionno字段设置外键===================================
alter table student add constraint fk_student_professionNo foreign key(professionno) references profession(professionno);
--===================================为profession表的departmentno字段设置外键================================
alter table profession add constraint fk_profession_departmentNo foreign key(departmentNo) references department(departmentNo);
select * from profession;
update profession set departmentNo = '1' where professionNo = '1';
select * from department;
insert into department values('1', '计算机学院');

select * from student;
desc profession;
select * from profession;
insert into profession values ('软件工程','1','1');
delete from profession;
update student set professionno = '1' where sno = '1';
desc student;



--查找学生信息
select s.* ,p.* , d.*
from student s
left join profession p
on s.professionno = p.professionNo
left join department d 
on p.departmentNo = d.departmentNo
where s.sno ='1';

select * from department;

drop table department;
create table department (
	departmentNo varchar(20) primary key,
	departmentName varchar(20)
);

create table credit (
	required int,
	selected int,
	common int,
	sno varchar(20),
	constraint fk_credit_student foreign key(sno) references student(sno) 
)
insert into credit values(4,2,2,'1');
select * from credit;
desc credit;

alter table student drop column scredit;
select * from student;
select s.* ,p.* , d.* ,c.*
from student s
left join profession p 
on s.professionno = p.professionNo
left join department d 
on p.departmentNo = d.departmentNo
left join credit c
on s.sno = c.sno
where s.sno = '1';















