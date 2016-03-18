-- ======================== 存储过程 脚本================================

create PROCEDURE pro_findTeacherByTno(in p_tno varchar(50) )
BEGIN
select * from teacher where tno = p_tno;
end;

create procedure pro_update_credit(in p_sno varchar(30),in p_credit int)
BEGIN
update credit set selected = selected - p_credit where sno = p_sno;
end;


create PROCEDURE pro_getSelectCourse(in p_sno varchar(50))
BEGIN
select s.* , c.cname,c.ctime,t.tname
from selectcourse s
LEFT JOIN coursetongxuan c on s.cno = c.cno
LEFT JOIN teacher t on c.tno = t.tno
where s.sno = p_sno
ORDER BY s.status;
end;


-- ========================  触发器 脚本 ================================

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


-- ========================== 函数  脚本===================================

create function func_test(p_test varchar(30))
returns int
BEGIN
declare temp int;
select credit into temp from coursetongxuan where cno = p_test;
return temp;
end;


drop FUNCTION func_find_credit_by_cno;
create FUNCTION func_find_credit_by_cno(p_cno varchar(30))
RETURNS int 
BEGIN
declare temp int ;
select credit into temp from coursetongxuan where cno = p_cno;
RETURN temp;
end;
