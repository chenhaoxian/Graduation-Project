package admin.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.mapper.AdminMapper;
import admin.model.Course;
import admin.service.CourseManageService;

@Service("courseManageService")
public class CourseManageServiceImpl implements CourseManageService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public List<Course> searchAllCourse() {
		// TODO Auto-generated method stub
		return adminMapper.getAllCourse();
	}

	@Override
	public Course searchCourseByCno(String cno) {
		// TODO Auto-generated method stub
		return adminMapper.getCourseByCno(cno);
	}

	@Override
	public int deleteCourseByAdmin(String cno) {
		// TODO Auto-generated method stub
		return adminMapper.deleteCourseByAdmin(cno);
	}

}
