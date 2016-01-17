package service;

import model.Admin;
import model.Student;
import model.Teacher;
import model.User;

public interface LoginService {
	Student findUserByUserid(String sno);
	Teacher findTeacherByTno(String tno);
	Admin findAdminByAid(String aid);

}
