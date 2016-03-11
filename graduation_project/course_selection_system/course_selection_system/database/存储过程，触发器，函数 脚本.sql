-- ======================== 存储过程 脚本================================

create PROCEDURE pro_findTeacherByTno(in p_tno varchar(50) )
BEGIN
select * from teacher where tno = p_tno;
end;



-- ========================  触发器 脚本 ================================

create TRIGGER tri_update_selectcourse
after update on selectcourse
for each ROW
BEGIN

end;

-- ========================== 函数  脚本===================================