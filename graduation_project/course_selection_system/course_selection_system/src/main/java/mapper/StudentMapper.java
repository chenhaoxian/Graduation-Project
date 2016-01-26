package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.CourseTongXuan;

public interface StudentMapper {
	
	List<CourseTongXuan> findAllCourseTongXuan(@Param("page")int page, @Param("rows")int rows);
	
	int countCourseTongXuan();

}
