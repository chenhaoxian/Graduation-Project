package admin.service;

import java.util.List;

import admin.model.Course;

public interface CourseManageService {
	
	List<Course> searchAllCourse();
	
	Course searchCourseByCno(String cno);

	
	int deleteCourseByAdmin(String cno);
}
