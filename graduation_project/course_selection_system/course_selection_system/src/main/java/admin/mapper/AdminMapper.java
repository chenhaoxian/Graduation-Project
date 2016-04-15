package admin.mapper;

import java.util.List;

import admin.model.Student;

public interface AdminMapper {
	
	int countUserContact();
	
	List<Student> getAllStudent();

}
