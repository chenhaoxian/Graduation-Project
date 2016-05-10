package mapper;

import java.util.List;

import model.CourseTongXuan;

public interface SearchHelpMapper {
	
	List<String> searchAutoCompleteName();
	
	CourseTongXuan searchCourseByCourseName(String courseName);
	
	List<String> getProfessionNames();

}
