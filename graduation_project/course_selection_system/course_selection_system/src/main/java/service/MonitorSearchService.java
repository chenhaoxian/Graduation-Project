package service;

import java.util.List;

import model.CourseTongXuan;

public interface MonitorSearchService {

	List<String> searchAutoCompleteName();
	
	CourseTongXuan searchCourseByCourseName(String courseName);
	
	List<String> getProfessionNames();
	
	

}
