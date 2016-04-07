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


alter table selectcourse add constraint fk_selectcourse_coursetongxuan foreign key(cno) REFERENCES coursetongxuan(cno);
select * from selectcourse;
desc selectcourse;


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


select * from course;
drop table course;

create table course (
	id int auto_increment primary key,
	cno varchar(20)  unique,
	cname varchar(30) ,
	ctype varchar(20),
	ctime varchar(50),
	credit int,
	total int,
	margin int,
	tno varchar(20),
	constraint fk_course_teacher foreign key (tno) references teacher(tno)
)

select * from teacher;
drop table teacher;

create table teacher(
	id int auto_increment primary key,
	tno varchar(20) unique,
	tname varchar(20),
	password varchar(20),
	departmentNo varchar(20),
	constraint fk_teacher_department foreign key(departmentNo) references department(departmentNo)
	
)

select * from department;

select * from teacher;

insert into teacher(tno,tname,password,departmentno) values('1','teacher1','123','1');

select * from course;
desc course;
alter table course modify column ctype varchar(50);
insert into course (cno,cname,ctype,ctime,credit,total,margin,tno) 
values ('TX2','通选课2','自然科学','周二 8:00--9:30',2,50,0,'1');
insert into course (cno,cname,ctype,ctime,credit,total,margin,tno) 
values ('TX3','通选课3','自然科学','周三 8:00--9:30',2,50,0,'1');
insert into course (cno,cname,ctype,ctime,credit,total,margin,tno) 
values ('TX4','通选课4','自然科学','周四 8:00--9:30',2,50,0,'1');
insert into course (cno,cname,ctype,ctime,credit,total,margin,tno) 
values ('TX5','通选课5','自然科学','周五 8:00--9:30',2,50,0,'1');

select * from teacher;

select * from course;

desc course;

select  * from credit;


select top(2) from course

create table courseTongXuan(
	id int primary key ,
	cno varchar(20) unique,
	cname varchar(50) ,
	ctype varchar(50) ,
	ctime varchar(50),
	credit int ,
	total int ,
	margin int,
	tno varchar(20),
	foreign key(tno) references teacher(tno)
);

select * from courseTongXuan;

insert into courseTongXuan (cno,cname,ctype,ctime,credit,total,margin,tno) 
values ('TX6','通选课6','自然科学','周一 10:00--11:30',2,50,0,'1');

--尿course 表数捿复制刿courseTongXuan
insert into courseTongXuan (select * from course); 


--!!!!!!!!!!!!!! 分页   mysql 没有 TOP 
select * from courseTongXuan
order by id 
limit 2 , 2;


select * from credit;

select * from student
where sname like '%ude%';

select * from courseTongXuan;
desc courseTongXuan;


select * from courseTongXuan;

select count(*) from courseTongXuan;

create procedure pro_findTableByTableName(in p_tableName varchar)
declare sql varchar(100);
begin
sql = 'select * from ' + p_tableName;
execute sql;
end;


create procedure pro_test2()
begin 
select * from courseTongXuan ;
end;

call pro_test('courseTongXuan');

CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_test2`()
	LANGUAGE SQL
	NOT DETERMINISTIC
	CONTAINS SQL
	SQL SECURITY DEFINER
	COMMENT ''
BEGIN
select * from CourseTongXuan;
END

call pro_getTable('courseTongXuan');

create procedure pro_getTableRows(in p_tableName varchar(50))
begin
select count(1) from p_tableName;
end;


SELECT * from coursetongxuan;

desc coursetongxuan;
select * from teacher;
desc teacher;
desc department;

create PROCEDURE pro_findTeacherByTno(in p_tno varchar(50) )
BEGIN
select * from teacher where tno = p_tno;
end;

call pro_findteacherbytno('1');

select t.tname ,d.departmentName
from teacher t
left JOIN department d on t.departmentNo = d.departmentNo
where t.tno='1';

select * from department;

select * from profession;
desc profession;
insert into profession VALUES('计算机科学与技术','2','1');

select * from teacher;
desc teacher;
desc coursetongxuan;

select * from department;
drop table teacher;
alter table teacher CHANGE id id int(10);
alter table teacher drop PRIMARY KEY;
alter table teacher drop COLUMN id;
alter table teacher change tno tno varchar(30);
alter table teacher drop column tno;
alter table teacher add PRIMARY KEY (tno);
select * from coursetongxuan;
desc coursetongxuan;
drop FOREIGN key fk_coursetongxuan_teacher;
alter table coursetongxuan drop FOREIGN KEY fk_coursetongxuan_teacher;



select c.*,t.* ,d.*
from coursetongxuan c
LEFT JOIN teacher t on c.tno = t.tno
LEFT JOIN department d on t.departmentNo = d.departmentNo

desc student;
select * from credit;
desc credit;


select s.* ,p.* , d.* , c.*
		from student s
		left join profession p 
		on s.professionno = p.professionNo
		left join department d 
		on p.departmentNo = d.departmentNo
		left join credit c
		on s.sno = c.sno;

select * from teacher;

desc coursetongxuan;

select * from coursetongxuan;
insert into coursetongxuan VALUES (6,'TX7','通选课7','自然科学','周二 10:00--11：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX8','通选课8','自然科学','周二 14:00--15：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX9','通选课9','自然科学','周二 16:00--17：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX10','通选课10','自然科学','周三 10:00--11：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX11','通选课11','自然科学','周三 14:00--15：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX12','通选课12','自然科学','周四 10:00--11：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX13','通选课13','自然科学','周二 10:00--11：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno)  VALUES ('TX14','通选课14','自然科学','周二 10:00--11：30',2,50,0,'1');
insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno) values('TX10','tongxuan','test','周二 10:00--11：30',2,50,0,'1');


select cname from courseTongxuan;

select * from credit;
select * from selectcourse;
desc selectcourse;
desc credit;
insert into selectcourse (cno,sno) values('TX1','1');
SELECT * FROM STUDENT;

select * from selectcourse;
select * from coursetongxuan;
select * from student;



ALTER table credit drop COLUMN required ;

alter table credit drop COLUMN common;

select c.*,t.*
from selectcourse s
LEFT JOIN coursetongxuan c on s.cno = c.cno
LEFT JOIN teacher t on c.tno = t.tno
where s.sno = '1';

select * from selectcourse;
update  selectcourse set status = '已修' where sno = '1';
alter table selectcourse add COLUMN status varchar(10);

select * from credit;
alter table credit add COLUMN success int DEFAULT 0;
alter table credit add COLUMN ongoing int DEFAULT 0;
update credit set success = 2 ;

create PROCEDURE pro_update_credit(in p_sno varchar(50),in p_status varchar(10))
BEGIN
if(p_status == '已修')
then 
	update credit set success = success + 2

select * from coursetongxuan;


-- ===========================================START
drop FUNCTION func_find_credit_by_cno;
create FUNCTION func_find_credit_by_cno(p_cno varchar(30))
RETURNS int 
BEGIN
declare temp int ;
select credit into temp from coursetongxuan where cno = p_cno;
RETURN temp;
end;

select func_find_credit_by_cno('TX1');
SELECT * FROM COURSETONGXUAN;
-- +=======================================END

-- ==========================================START
drop function func_test;

create function func_test(p_test varchar(30))
returns int
BEGIN
declare temp int;
select credit into temp from coursetongxuan where cno = p_test;
return temp;
end;

select func_test('TX1');
-- ============================================END


create table table_test(
COLUMN_int int,
COLUMN_varchar varchar(100)
)

create PROCEDURE pro_update_credit(in )



select * from coursetongxuan;
select * from credit;
alter table credit drop COLUMN ongoing;



select * from selectcourse;
desc selectcourse;

create PROCEDURE pro_test;

update credit 
set selected = selected + 2;
select * from credit;

create procedure pro_update_credit(in p_sno varchar(30),in p_credit int)
BEGIN
update credit set selected = selected - p_credit where sno = p_sno;
end;

EXEC pro_update_credit('1',2);
call pro_update_credit('1',2);

select * from coursetongxuan where cno like '%X%'

select * from coursetongxuan
GROUP BY cno
having total < 40;

select * from coursetongxuan 
GROUP BY cno 
having total > 40;


select * from credit;

update credit set selected = selected + 2 ;


select * from selectcourse;

-- ==============================================START
drop TRIGGER tri_delete_selectcourse;




create TRIGGER tri_delete_selectcourse
after delete on selectcourse
for each ROW
BEGIN
declare v_credit int ;

set v_credit = func_find_credit_by_cno(old.cno);

call pro_update_credit(old.sno,v_credit);

update coursetongxuan set margin = margin - 1
where cno = old.cno;

end;




drop trigger tri_insert_selectcourse;

create TRIGGER tri_insert_selectcourse
after insert on selectcourse
for each ROW
BEGIN
declare v_credit int ;
set v_credit = 0-func_find_credit_by_cno(new.cno);
call pro_update_credit(new.sno,v_credit);

update coursetongxuan 
set margin = margin + 1;
end;

-- ====================================================END
select * from coursetongxuan;

select * from selectcourse;
select * from credit;
UPDATE CREDIT SET SELECTED = 2;
insert into selectcourse (cno,sno,status) values('TX2','1','在修');
delete  from selectcourse where cno = 'TX2';

update coursetongxuan
set total = total - 1 
,margin = margin - 1
where cno = 'TX10';

insert into selectcourse(cno,sno,status) VALUES('TX10','1','在修');
delete from selectcourse where cno = 'TX10';

select * from student;

desc selectcourse;

drop PROCEDURE pro_getSelectCourse;

create PROCEDURE pro_getSelectCourse(in p_sno varchar(50))
BEGIN
select s.* , c.cname,c.ctime,t.tname
from selectcourse s
LEFT JOIN coursetongxuan c on s.cno = c.cno
LEFT JOIN teacher t on c.tno = t.tno
where s.sno = p_sno
ORDER BY s.status;
end;

call pro_getselectcourse('1');
insert into selectcourse(cno,sno,status) values('TX10','1','在修');

desc coursetongxuan;
desc selectcourse;
select * from selectcourse ORDER BY status;

select * from coursetongxuan;
select * from selectcourse;
delete FROM selectcourse where cno = 'TX6';

delete from selectcourse where status = '在修'

update coursetongxuan set margin = 0 ;
SELECT c.*,t.*,d.*
from coursetongxuan c
LEFT JOIN teacher t on c.tno = CONVERT(t.tno USING utf8) COLLATE utf8_unicode_ci
left join department d on t.departmentNo = CONVERT(d.departmentNo USING utf8) COLLATE utf8_unicode_ci
where c.cno not in (
	select cno from selectcourse where sno = '1'
)
order by c.cno;

create PROCEDURE pro_countCourseRecordBySno(in P_Sno varchar(30) )
AS
BEGIN
	select count(1) from coursetongxuan 
	where cno not in
	(
		select cno from selectcourse where sno = P_Sno
	);
end;

create function func_countCourseRecordBySno(p_sno varchar(30))
returns int
BEGIN
declare temp int;
select count(1) into temp from coursetongxuan 
	where cno not in
	(
		select cno from selectcourse where sno = P_Sno
	);
return temp;
end;

 func_countCourseRecordBySno('1');
select func_countCourseRecordBySno('1') from dual;

drop trigger tri_insert_selectcourse;
create TRIGGER tri_insert_selectcourse
after insert on selectcourse
for each ROW
BEGIN
declare v_credit int ;
set v_credit = 0-func_find_credit_by_cno(new.cno);
call pro_update_credit(new.sno,v_credit);

update coursetongxuan 
set margin = margin + 1
where cno = new.cno;
end;

select * from selectcourse;

delete from selectcourse where sno = '3';

select * from teacher;
select * from department;
select * from profession;


call pro_findTeacherByTno('1');
drop PROCEDURE pro_findTeacherByTno;
create PROCEDURE pro_findTeacherByTno(in p_tno varchar(30))
BEGIN
	select t.* ,d.departmentname
	from teacher t
	LEFT JOIN department d on t.departmentNo=d.departmentNo
	where t.tno = p_tno;
end;

select * from coursetongxuan where tno='1'

select * from coursetongxuan;
desc coursetongxuan;

alter table coursetongxuan drop COLUMN id;
alter table coursetongxuan add column id int primary key auto_increment ;

alter table coursetongxuan MODIFY column id int PRIMARY key auto_increment;

insert into coursetongxuan(cno,cname,ctype,ctime,credit,total,margin,tno) values('TX23423','testCourse1','自然科学','周五 8:00--9:30',3,50,0,'1');







