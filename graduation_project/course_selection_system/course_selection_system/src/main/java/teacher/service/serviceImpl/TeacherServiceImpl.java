package teacher.service.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import model.CourseTongXuan;
import teacher.mapper.TeacherMapper;
import teacher.service.TeacherService;
import util.Tool;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherMapper teacherMapper;
	
	@Override
	public void insertCourse( @Param("cname")String cname, @Param("ctype")String ctype,
			@Param("ctime")String ctime, @Param("creditInt")int creditInt, @Param("totalInt")int totalInt, @Param("tno")String tno) {
		int cnoInt = (int)(Math.random()*1000000);
		String cno = String.valueOf(cnoInt);
//		int creditInt = Integer.parseInt(credit);
//		int totalInt = Integer.parseInt(total);
		
		while(teacherMapper.countCnoFromCourseTable(cno) != 0){
			cno = String.valueOf((int)(Math.random()*1000000));
		}
//		Tool.print(cname+"   "+ctype+"   "+ctime+"   "+creditStr+"   "+totalStr+"   "+tno+"   ");
		
		int margin = 0;
		
		teacherMapper.insertCourse(cno, cname, ctype, ctime, creditInt, totalInt, margin, tno);

	}

	@Override
	public List<CourseTongXuan> findCourse(String tno) {
		List<CourseTongXuan> courseList = teacherMapper.getCourseByTno(tno);
		return courseList;
	}

}
