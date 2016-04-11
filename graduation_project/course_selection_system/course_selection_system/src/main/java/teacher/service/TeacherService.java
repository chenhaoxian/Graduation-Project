package teacher.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import model.CourseTongXuan;

public interface TeacherService {
	
	void insertCourse( @Param("cname")String cname, @Param("ctype")String ctype,
			@Param("ctime")String ctime, @Param("creditInt")int creditInt, @Param("totalInt")int totalInt, @Param("tno")String tno);
	
	List<CourseTongXuan> findCourse(@Param("tno")String tno);
	
	boolean deleteCourse(@Param("cno")String cno);

}
