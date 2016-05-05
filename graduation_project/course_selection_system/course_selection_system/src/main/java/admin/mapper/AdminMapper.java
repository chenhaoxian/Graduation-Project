package admin.mapper;

import java.util.List;

import admin.model.Course;
import admin.model.Student;
import admin.model.Teacher;

public interface AdminMapper {
	
	int countUserContact();
	
	List<Student> getAllStudent();
	
	int deleteStudentBySno(String sno);
	
	Student getStudentBySno(String sno);
	
	List<Teacher> getAllTeacher();
	
	int deleteTeacherByTno(String tno);
	
	Teacher getTeacherByTno(String tno);
	
	List<Course> getAllCourse();
	
	Course getCourseByCno(String cno);
	
	int deleteCourseByAdmin(String cno );

}
