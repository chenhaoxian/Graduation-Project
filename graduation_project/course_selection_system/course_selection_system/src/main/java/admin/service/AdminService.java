package admin.service;

import java.util.List;

import admin.model.Student;

public interface AdminService {
	
	int countContactMessage();
	
	List<Student> findAllStudent();

}
