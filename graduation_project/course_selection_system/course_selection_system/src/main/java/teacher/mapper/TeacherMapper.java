package teacher.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import model.CourseTongXuan;

public interface TeacherMapper {
	
	int countCnoFromCourseTable(@RequestParam("cno")String cno);
	
	void insertCourse(@Param("cno")String cno, @Param("cname")String cname, @Param("ctype")String ctype,
			@Param("ctime")String ctime, @Param("creditInt")int creditInt, @Param("totalInt")int totalInt, 
			@Param("margin")int margin, @Param("tno")String tno);
	
	List<CourseTongXuan> getCourseByTno(@Param("tno")String tno);

}
