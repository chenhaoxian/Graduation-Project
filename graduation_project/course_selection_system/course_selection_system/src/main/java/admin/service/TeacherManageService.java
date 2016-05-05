package admin.service;

import java.util.List;

import admin.model.Teacher;

public interface TeacherManageService {
	
	List<Teacher> seachAllTeacher();
	
	int deleteTeacherByTno(String tno);
	
	Teacher findTeacherByTno(String tno );

}
