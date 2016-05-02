package admin.mapper;

import java.util.List;

import admin.model.Student;
import admin.model.Teacher;

public interface AdminMapper {
	
	int countUserContact();
	
	List<Student> getAllStudent();
	
	int deleteStudentBySno(String sno);
	
	Student getStudentBySno(String sno);
	
	List<Teacher> getAllTeacher();

}
