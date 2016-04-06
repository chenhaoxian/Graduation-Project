package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.CourseTongXuan;
import model.SelectCourse;

public interface StudentMapper {
	
	List<CourseTongXuan> findAllCourseTongXuan(@Param("page")int page, @Param("rows")int rows, @Param("sno")String sno);
	
	int countCourseTongXuan();
	
	List<SelectCourse> findSelectCourse(String sno);
	
	int countSelectCourseByCnoSno(@Param("cno")String cno, @Param("sno")String sno);
	
	void insertSelectCourse(@Param("cno")String cno, @Param("sno")String sno);
	
	void deleteSelectCourseByCnoSno(@Param("cno")String cno, @Param("sno")String sno);

}
