package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.CourseTongXuan;
import model.SelectCourse;

public interface StudentService {
	
	List<CourseTongXuan> findAllCourseTongXuan(@Param("page")int page, @Param("rows")int rows);
	
	int getPages(int pageSize);
	
	List<SelectCourse> getSelectCourseList(String sno);

}
